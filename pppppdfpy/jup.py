import PyPDF2

pdfFile = open ('cccc.pdf','rb') #워터마크를 새길 원본파일 불러오기

pdfReader = PyPDF2.PdfFileReader(pdfFile)

FirstPage= pdfReader.getPage(0)  #첫번째 페이지에만 워터마크 표시

#워터마크 이미지 파일 지정

pdfWatermarkReader = PyPDF2.PdfFileReader(open('outcvvpqwerut.pdf', 'rb'))

FirstPage.mergePage(pdfWatermarkReader.getPage(0))

pdfWriter = PyPDF2.PdfFileWriter()

pdfWriter.addPage(FirstPage)

for pageNum in range(1, pdfReader.numPages):
    pageobj = pdfReader.getPage(pageNum)
    pdfWriter.addPage(pageobj)

resultPdfFile = open('cccc.pdf', 'wb')

pdfWriter.write(resultPdfFile)

resultPdfFile.close()

pdfFile.close()

print('작업이 완료되었습니다')