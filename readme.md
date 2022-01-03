# Notes Archive Export
Archive your macOS Notes into a PDF that you can then print. 

1. Use folderJSON.scpt to export a list of folders as folderJSON.json in /_data folder
2. Use notesSave.scpt to export notes metadata as notesJSON.json in /_data folder and save each note as HTML in /_note_exports . Change the following line to the appropriate date. 
``` 
if ((not noteLocked) and ((modification date of theNote) > (date "Friday, 1 January 2021 at 00:00:00"))) then
			-- * date can be set using "1 JAN YYYY"
```
3. Remove trailing comma from JSON files. Use "node --max-old-space-size=8192 render.js" to generate output.html in /_output folder.
4. Open output.html in browser (chrome) and save to PDF with custom page size 2.45in x 8in, 0 margin. 
5. Use python twoUp_hamburger_withcols.py 'name-of-output.pdf' to put the columns together and stitch into a printable 5.5"x8.5" booklet. 
6. slice down middle, use PVA glue to glue together. 


Applescripts will export images and some URLs to the HTML file for Mac OS 11 and higher. Mac OS 10 will export notes without attachments. 