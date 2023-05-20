from fpdf import FPDF
import json, requests
from time import sleep

def createPdf():
    sleep(1)
    url = requests.get("https://firebasestorage.googleapis.com/v0/b/project-kly-8882e.appspot.com/o/test1.json?alt=media&token=fe95b398-cbf7-4d21-8847-2b164a064936")
    #text_data = urllib.request.urlopen(url).read().decode('utf-8')
    #with open(byte_data, "r", encoding="utf8") as f:
    #    contents = f.read() # string 타입
    contents = url.text
    json_data = json.loads(contents) # json 데이터

    print(contents)

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
    
    fpdf.text(10,10,txt = name) #텍스트 pdf에 추가(x, y, txt값)
    fpdf.text(30,30,txt = id)
    fpdf.text(50,50,txt = address)
    fpdf.text(70,70,txt = money)
    fpdf.text(90,90,txt = bankname)
    fpdf.text(110,110,txt = banknum)
    fpdf.text(130,130,txt = accountname)
    """
    fpdf.text(30,30,txt = "30,30")
    fpdf.text(30,150,txt = "30,150")
    fpdf.text(30,270,txt = "30,270")
    fpdf.text(150,30,txt = "150,30")
    fpdf.text(150,150,txt = "150,150")
    fpdf.text(150,270,txt = "150,270")
    """
    # fpdf.image("image.png", 60, 100, w=60) #이미지 첨부 (파일명 or 파일경로, x, y, 너비(비율 알아서 지정))

    fpdf.output("jkl.pdf") # 저장될 파일명
if __name__=="__main__":
        createPdf()