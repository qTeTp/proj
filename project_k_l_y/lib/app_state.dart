import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? _value) {
    _selectedDate = _value;
  }

  int _numberofTeacher = 0;
  int get numberofTeacher => _numberofTeacher;
  set numberofTeacher(int _value) {
    _numberofTeacher = _value;
  }

  int _MainT = 0;
  int get MainT => _MainT;
  set MainT(int _value) {
    _MainT = _value;
  }

  int _SupportT = 0;
  int get SupportT => _SupportT;
  set SupportT(int _value) {
    _SupportT = _value;
  }

  int _SafeT = 0;
  int get SafeT => _SafeT;
  set SafeT(int _value) {
    _SafeT = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
