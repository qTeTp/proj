#-*-coding:utf-8-*-
import json

# receive user input
name = input("이름: ")
id_num = int(input("주민등록번호: "))
bankname = input("은행명: ")
accountname = int(input("계좌: "))
banknum = input("예금주: ")

# create a dictionary with the user information
user_info = {"name": name, "id_num": id_num, "bankname" : bankname, "accountname" : accountname, "banknum" : banknum}

# convert the dictionary to JSON format
json_data = json.dumps(user_info)

# print the JSON data
print(json_data)
# convert the dictionary to JSON format
json_data = json.dumps(user_info, ensure_ascii=False)

# print the JSON data with UTF-8 encoding
# print(json_data.encode('utf-8').decode('unicode-escape'))

# json 생성
file_path = "./test5.json"

with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(user_info, file, indent="\t", ensure_ascii=False)