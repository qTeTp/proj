import json

file_path = "./test.json"

with open(file_path, 'r') as file:
    data = json.load(file)
    print(type(data))
    # print(data)
    print(data["bill"])

# Output
# <class 'dict'>
# {'Olivia': {'gender': 'female', 'age': 25, 'hobby': ['reading', 'music']}, 'Tyler': {'gender': 'male', 'age': 28, 'hobby': ['development', 'painting']}}
# {'gender': 'male', 'age': 28, 'hobby': ['development', 'painting']}