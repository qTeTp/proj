import json

file_path = "./test.json"

# 기존 json 파일 읽어오기
with open(file_path, 'r') as file:
    data = json.load(file)

# 데이터 수정
data["asdf"]["job"].append("take a picture")
data["zxcv"]["id"] = "zxcv3"
data["bill"]["1agree"].append(False)

# 기존 json 파일 덮어쓰기
with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(data, file, indent="\t")