import json, requests 

url = requests.get("https://firebasestorage.googleapis.com/v0/b/project-kly-8882e.appspot.com/o/test1.json?alt=media&token=fe95b398-cbf7-4d21-8847-2b164a064936")
text = url.text

data = json.loads(text)

# print(data)
print(data['name'])

