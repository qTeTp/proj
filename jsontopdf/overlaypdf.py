from fpdf import FPDF
import json
from time import sleep


def createPdf():
    sleep(1)
    
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
    fpdf = FPDF()

    fpdf.add_page() #새로운 pdf 페이지 생성

    fpdf.set_font("Arial", size=10) #텍스트 폰트와 사이즈

    fpdf.text(20,40,txt = name) #텍스트 pdf에 추가(x, y, txt값)
    fpdf.text(20,45,txt = id)
    fpdf.text(20,50,txt = address)
    fpdf.text(20,60,txt = money)
    fpdf.text(5,70,txt = bankname)
    fpdf.text(50,70,txt = banknum)
    fpdf.text(30,70,txt = accountname)
    
    fpdf.image("image.png", 60, 100, w=60) #이미지 첨부 (파일명 or 파일경로, x, y, 너비(비율 알아서 지정))

    fpdf.output("jkl.pdf") # 저장될 파일명
if __name__=="__main__":
        createPdf()