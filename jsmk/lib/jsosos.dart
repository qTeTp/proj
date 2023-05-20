import 'dart:convert';
import 'dart:io';
import 'package:jsmk/main.dart';

void sss() {
  // Create a map to represent the input values
  Map<String, dynamic> jsonData = {
    'name': inputText1,
    'id': inputText2,
    'banknum': inputText3,
  };

  // Convert the map to a JSON string
  String jsonString = jsonEncode(jsonData);

  // Write the JSON string to a file
  File('C://Users//user//Documents//proj//data.json').writeAsString(jsonString).then((file) {
    print('JSON file created successfully!');
  }).catchError((error) {
    print('Error creating JSON file: $error');
  });
}

void main() {
  sss();
}