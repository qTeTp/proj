import json

class Contact:
    def __init__(self, name, id_num, bankname, banknum, account_name):
        self.name = name
        self.id_num = id_num
        self.bankname = bankname
        self.account_name = account_name
        self.banknum = banknum

    def print_info(self):
        print("이름: ", self.name)
        print("주민등록번호: ", self.id_num)
        print("은행명: ", self.bankname)
        print("계좌번호: ", self.banknum)
        print("예금주: ", self.account_name)

def set_contact():
    name = input("이름: ")
    id_num = input("주민등록번호: ")
    bankname = input("은행명: ")
    banknum = input("계좌번호")
    account_name = input("예금주: ")
    print(name, id_num, bankname, banknum, account_name)

def run():
    set_contact()

if __name__ == "__main__":
    run()
# json 형식
data = {
    "bill":{
        "name" : name,
        "id_num" : id_num,
        "bankname" : bankname,
        "banknum" : banknum,
        # "job" : ["student", "sucker"],
        "account_name" : account_name,
        # "signature" : "firebase domain",
        # "1agree" : True, # boolean값은 앞자리 대문자로
        # "2agree" : True
    }
}
# json 생성
file_path = "./test1.json"

with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(data, file, indent="\t")