import PyPDF2

pdf_file = "cccc.pdf" # 기존 pdf명

watermark = "C:\\Users\\user\\Documents\\proj\\1\\nnnn.pdf"
# 합칠 pdf명 왜 경로가 안될까낭...ㅜ jpg하고 텍스트가 안들어가서 pdf 두개를 섞는 식으로 갈거에용

merged_file = "merged.pdf" # 만들어질 파일명

input_file = open(pdf_file,'rb')
input_pdf = PyPDF2.PdfFileReader(input_file)

watermark_file = open(watermark,'rb')
watermark_pdf = PyPDF2.PdfFileReader(watermark_file)

pdf_page = input_pdf.getPage(0)

watermark_page = watermark_pdf.getPage(0)

pdf_page.mergePage(watermark_page)

output = PyPDF2.PdfFileWriter()

output.addPage(pdf_page)

merged_file = open(merged_file,'wb')
output.write(merged_file)

merged_file.close()
watermark_file.close()
input_file.close()