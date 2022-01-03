const fs = require('fs');
const jsdom = require('jsdom');
const process = require('process');
const { JSDOM } = jsdom; 
const notes = JSON.parse(fs.readFileSync( '../_data/noteJSON.json', {encoding:'utf8'} ));
const folders = JSON.parse(fs.readFileSync( '../_data/folderJSON.json', {encoding:'utf8'} ));
// might have to remove trailing comma from JSON files. 
const year = notes[0].creDate.split(" ")[3];

// FUNCTIONS //
// get date obj
function toDate(creDate) {
    var utcDate = creDate.split(", ")[1].split(" at ").join(" ");
    return Date.parse(utcDate)
 }

// write to HTML file function
function writeHTML(content) {
    fs.writeFile('../output/output.html', content, err => {
        if (err) {
          console.error(err)
          return
        }
        //file written successfully
      })
}


// START //

// 1. Sorting notes in chrono order
// add date to note obj
for (let note of notes) {
    note["date"] = toDate(note.creDate);
}
//sort by date obj
notes.sort(function (a, b) {
    return a.date - b.date;
  });

// 2. Create DOM for HTML file
const seedHTML = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notes Archive `+year+`</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    
</body>
</html>
`
const dom = new JSDOM(seedHTML);
const document = dom.window.document;
// 3. create data structure with folders, subfolders, and notes

// remove any folders that don't have notes in them this year. 
for (let folder in folders) {
    let noteInFolder = false;
    for (let note of notes){
        if (note.container == folder) {
            noteInFolder = true;
            break 
        }
    }
    if (!noteInFolder) {
        delete folders[folder];
    }
}

// make render structure.
// put all folders with icloud as parent in the db
// if folder has diff parent, then see if it has been made. add parent to db if not. if so,
// add to subfolders. this only works for one layer of subfolders; for multiple layers, gotta 
// recurse code but i'll deal with that later
// {
//     '2021 01': {notes:[], subfolders:{}},
//     'Health': {notes:[], subfolders:{"Food": {notes:[], subfolders:{}}}}}
// }

var renderData = {}
var foldObjByName = {}

function addFolderToRenderData(placeToPutFolder,folder) {
    let foldObj = {notes:[], subfolders:{}}
    placeToPutFolder[folder] = foldObj;
    foldObjByName[folder] = foldObj;
}

for (let folder in folders) {
    if (folders[folder] == "iCloud") {
        addFolderToRenderData(renderData,folder);
    } else { 
        if (!(folders[folder] in renderData)) {
            addFolderToRenderData(renderData,folders[folder]);
        } 
        addFolderToRenderData(renderData[folders[folder]].subfolders,folder);
    }
}


// then add notes to folder object which appears in both renderData and foldObjByName.
for (let note of notes) {
    foldObjByName[note.container].notes.push(note);
}


// render in HTML
function renderToHTML(folderName, rd) {
    
    var folderObj = rd[folderName];
    // console.log("folderObj-------------:", folderObj);
    var divFolder = document.createElement("div");
    divFolder.classList.add('folder');
    divFolder.innerHTML = folderName;

    document.body.appendChild(divFolder);
    if (folderObj.notes.length > 0) {
        for (let note of folderObj.notes) {
            var divNote = document.createElement("div");
            divNote.classList.add('note');
            var dateDiv = document.createElement("div");
            dateDiv.classList.add('dates');
            dateDiv.innerHTML = `<p>created `+note.creDate+`</p><p>modified `+note.modDate+`</p>`;
            var content = fs.readFileSync('../_note_exports/['+note.noteID.toString()+'].html', {encoding:'utf8'} );

            divNote.innerHTML = content;
            divNote.prepend(dateDiv);
            document.body.appendChild(divNote);
        }
    }
}
// let folderName = '2021 03';

for (let folderName in renderData) {
    console.log(folderName);
    renderToHTML(folderName,renderData);
    console.log(process.memoryUsage());
    
    for (let subfolderName in renderData[folderName].subfolders) {
        console.log(folderName);
        renderToHTML(subfolderName, renderData[folderName].subfolders);
    }
}
// // let testNote = renderData[folderName].notes[0];






// // write file
writeHTML(dom.serialize())
