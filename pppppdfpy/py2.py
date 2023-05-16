import os
from PyPDF2 import PdfFileReader, PdfFileWriter
from reportlab.pdfgen import canvas


# 1. 이미지가 삽입 될 빈 pdf 문서를 만든다.
c = canvas.Canvas('qwer.pdf')

# 2-1. 이미지의 검은색을 투명처리 (자세한 설명은 문서 하단에 정리)
mask = [0, 0, 0, 0, 0, 0]
# 2-2. 생성한 빈 pdf 문서에 이미지를 삽입(draw)한다. (좌표참고: 좌측하단이 0, 0)
c.drawImage('image2.png', x=500, y=50, width=44, height=44, mask=mask)
c.save()

# 3. 방금 생성한 pdf 문서를 연다.
stamp = PdfFileReader(open('qwer.pdf', 'rb'))

# 4. 출력을 위한 객체 생성
output_file = PdfFileWriter()

# 5. 이미지가 들어갈 원본 pdf 문서를 연다.
input_file = PdfFileReader(open('cccc.pdf', 'rb'))

# 6. 원본 pdf 문서의 전체 페이지 값을 가져온다.(총 3페이지이면 3이 출력)
page_cnt = input_file.getNumPages()

# 7. 이미지가 삽입 될 페이지 리스트 setting
insert_page = [1, 3]

# 8. 이미지가 삽입된 빈 문서와 원본 문서를 페이지별로 merge
for page_num in range(page_cnt):
    input_page = input_file.getPage(page_num)
    if page_num in [num-1 for num in insert_page]:
        print('insert image page {} of {}'.format(page_num+1, page_cnt))
        input_page.mergePage(stamp.getPage(0))
    output_file.addPage(input_page)

# 9. 'out_file'을 pdf 문서로 출력
with open('output_cccc.pdf', 'wb') as outputStream:
    output_file.write(outputStream)