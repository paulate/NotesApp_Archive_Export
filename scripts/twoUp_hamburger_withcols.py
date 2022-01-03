from PyPDF2 import PdfFileWriter, PdfFileReader
import PyPDF2
import os, sys

# You can run:
# python twoUp_sizeFix_hamburger.py 'filename.pdf'
if len(sys.argv) > 1:
    pdfFile = sys.argv[1]
else:
    pdfFile = 'johnCage.pdf'
splitExt = os.path.splitext(pdfFile)
pdfWriteFile = splitExt[0] + '_2up_cols' + splitExt[1]

infile = PdfFileReader(open(pdfFile,'rb'))
(w,h) = infile.getPage(0).mediaBox.upperRight
twoUp = PdfFileWriter()
# 72 DPI

# add existing pages to new PDF Writer (No Scaling)
for i in range(infile.getNumPages()):
    p = infile.getPage(i)
    twoUp.addPage(p)

# add blank pages to get correct twoUp / twoFold layout (# pages must be divisible by 4)
while twoUp.getNumPages()/2 % 4:
    twoUp.addBlankPage()

# this is the new PDF Writer that will have correct page ordering
twoOrder = PdfFileWriter()

# make blank half letter writer to put columns on to. 
halfLetter = PdfFileWriter()
# arrange pages into left and right columns
for i in (range(int(twoUp.getNumPages()/2))):
    halfLetter.addBlankPage(5.5*72,8.5*72)
    leftCol = twoUp.getPage(i*2)
    rightCol = twoUp.getPage(i*2+1)
    
    currentPage = halfLetter.getPage(i)
    currentPage.mergeTranslatedPage(leftCol,.25*72,.25*72)
    currentPage.mergeTranslatedPage(rightCol,(.25+2.45+.1)*72,.25*72)
           
for i in (range(int(halfLetter.getNumPages()/2))):
    # create a blank page with twice width for 2UP
    twoOrder.addBlankPage(11*72,8.5*72)
    # then reorder the pages
    if i % 2:
            leftPage = halfLetter.getPage(i)
            rightPage = halfLetter.getPage(halfLetter.getNumPages()-i-1)
    else:
            leftPage = halfLetter.getPage(halfLetter.getNumPages()-i-1)
            rightPage = halfLetter.getPage(i)
    currentPage = twoOrder.getPage(i)
    currentPage.mergePage(leftPage)
    currentPage.mergeTranslatedPage(rightPage,5.5*72,0)

with open(pdfWriteFile,'wb') as f:
    twoOrder.write(f)