import json
import html

# JSON 데이터 가져오기
with open('mydata.json', 'r') as f:
    data = json.load(f)

# HTML 파일 생성
html = '''
<html>
<head>
<title>My Page</title>
</head>
<body>
<h1>My Page</h1>
<p>This is my page.</p>
<p>My name is <strong>{name}</strong> and my email address is <strong>{email}</strong>.</p>
<p>I live at <strong>{address.street}</strong> in <strong>{address.city}, {address.state} {address.zip}</strong>.</p>
</body>
</html>
'''.format(**data)

# HTML 파일 저장
with open('myfile.html', 'w') as f:
    f.write(html)