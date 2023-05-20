
import 'package:flutter/material.dart';
import 'package:jsmk/jsosos.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyTextFieldWidget(),
    );
  }
}
String inputText1 = "";
String inputText2 = "";
String inputText3 = "";
/// This is the stateful widget that the main application instantiates.
class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test TextField')),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
        
          Form(
              child: Theme(
            data: ThemeData(
                primaryColor: Colors.grey,
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.teal, fontSize: 15.0))),
            child: Container(
                padding: EdgeInsets.all(40.0),
                // 키보드가 올라와서 만약 스크린 영역을 차지하는 경우 스크롤이 되도록
                // SingleChildScrollView으로 감싸 줌
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text){
                          print('First text field: $text');
                          setState((){
                            inputText1 = text;
                          });
                        },
                        controller: _controller,
                        decoration: InputDecoration(labelText: 'name'),
                        keyboardType: TextInputType.text,
                      ),
                      TextField(
                        onChanged: (text){
                          setState((){
                            inputText2 = text;
                          });
                        },
                        controller: _controller,
                        decoration: InputDecoration(labelText: 'idnum'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      TextField(
                        onChanged: (text){
                          setState((){
                            inputText3 = text;
                          });
                        },
                        controller: _controller,
                        decoration:
                            InputDecoration(labelText: 'address'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      TextField(
                        controller: _controller,
                        decoration:
                            InputDecoration(labelText: 'howmoney'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      TextField(
                        controller: _controller,
                        decoration:
                            InputDecoration(labelText: 'bankname'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      TextField(
                        controller: _controller,
                        decoration:
                            InputDecoration(labelText: 'holder'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      TextField(
                        controller: _controller,
                        decoration:
                            InputDecoration(labelText: 'account'),
                        keyboardType: TextInputType.text,
                        
                      ),
                      SizedBox(height: 40.0,),
                      ButtonTheme(
                        minWidth: 100.0,
                        height: 50.0,
                        child: ElevatedButton( 
                            onPressed: (){
                              sss();
                            },
                            child: Icon(
                              Icons.abc,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent
                            ),
                        )
                      )
                    ],
                  ),
                )),
          ))
        ],
      /*Center(
        child: Padding(
          //상하좌우로 띄워주기 (아이콘 왼쪽과 텍스트 필드 오른쪽이 화면 테두리와 조금 떨어져 있다.)
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                labelText: '아무거나 입력하세요',
                helperText: '공백, 글자, 숫자, 특수문자가 가능해요',
                hintText: '???',  //글자를 입력하면 사라진다.
                icon: Icon(Icons.android),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(3)
            ),
            onSubmitted: (String value) async {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Thanks!'),
                    content: Text(
                        'You typed "$value", which has length ${value.characters.length}.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),*/
    ));
  }
  


}