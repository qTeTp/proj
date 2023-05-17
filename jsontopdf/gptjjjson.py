#-*-coding:utf-8-*-
import json
import PyPDF2
from fpdf import FPDF
from time import sleep
from copdf import mergepdf as mp
from overlaypdf import createPdf as ov

# receive user input
name = input("이름: ")
id_num = input("주민등록번호: ") # int(input("number: "))로 할 수 있는데 fpdf가 못읽어...
address = input("주소: ")
money = input("금액: ")
bankname = input("은행명: ")
banknum = input("예금주: ")
accountname = input("계좌: ")

    # create a dictionary with the user information
user_info = {"name": name, "id_num": id_num, "address": address, "money": money,"bankname" : bankname, "banknum" : banknum, "accountname" : accountname}

    # convert the dictionary to JSON format
json_data = json.dumps(user_info)

    # print the JSON data
print(json_data)
    # convert the dictionary to JSON format
json_data = json.dumps(user_info, ensure_ascii=False)

# print the JSON data with UTF-8 encoding
# print(json_data.encode('utf-8').decode('unicode-escape'))

    # json 생성
file_path = "./test1.json"

with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(user_info, file, indent="\t", ensure_ascii=False)
"""
with open("test1.json", "r", encoding="utf8") as f:
    contents = f.read() # string 타입
    json_data = json.loads(contents) # json 데이터

name = json_data['name']
id =  json_data['id_num']
address = json_data['address']
money = json_data['money']
bankname =  json_data['bankname']
banknum =  json_data['banknum']
accountname =  json_data['accountname']

def createPdf():

    fpdf = FPDF()

    fpdf.add_page() #새로운 pdf 페이지 생성

    fpdf.set_font("Arial", size=20) #텍스트 폰트와 사이즈

    fpdf.text(20,40,txt = name) #텍스트 pdf에 추가(x, y, txt값)
    fpdf.text(20,45,txt = id)
    fpdf.text(20,50,txt = address)
    fpdf.text(20,60,txt = money)
    fpdf.text(5,70,txt = bankname)
    fpdf.text(50,70,txt = banknum)
    fpdf.text(30,70,txt = accountname)
    
    # fpdf.image("image.png", 60, 100, w=60) #이미지 첨부 (파일명 or 파일경로, x, y, 너비(비율 알아서 지정))

    fpdf.output("jkl.pdf") # 저장될 파일명
"""
ov()
mp()
"""
def mergepdf():
    sleep(1)
    pdf_file = "asdf.pdf" # 기존 pdf명

    watermark = "jkl.pdf"
    # 합칠 pdf명 왜 경로가 안될까낭...ㅜ jpg하고 텍스트가 안들어가서 pdf 두개를 섞는 식으로 갈거에용
    merged_file = "gg1.pdf" # 만들어질 파일명
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
    
    """