import json

data = {
    "bill":{
        "name" : "qwerqwer",
        "id_num" : "qwerqwer",
        "bankname" : "qwer",
        "banknum" : ["student", "sucker"],
        "account" : "qewr",
        "signature" : "firebase domain",
        "1agree" : True, # boolean값은 앞자리 대문자로
        "2agree" : True
    },
    "asdf":{
        "id" : "asdfasdf",
        "pw" : "asdfasdf",
        "name" : "asdf",
        "job" : ["qstudent", "sucker"]
    },
    "zxcv":{
        "id" : "zxcvzxcv",
        "pw" : "zcxvzxcv",
        "name" : "zxcv",
        "job" : ["qstudwent", "suckewr"]
    }
}

file_path = "./test.json"

with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(data, file, indent="\t")