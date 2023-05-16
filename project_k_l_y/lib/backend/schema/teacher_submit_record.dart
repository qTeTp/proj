import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teacher_submit_record.g.dart';

abstract class TeacherSubmitRecord
    implements Built<TeacherSubmitRecord, TeacherSubmitRecordBuilder> {
  static Serializer<TeacherSubmitRecord> get serializer =>
      _$teacherSubmitRecordSerializer;

  String? get uid;

  @BuiltValueField(wireName: 'bankbook_copy')
  String? get bankbookCopy;

  @BuiltValueField(wireName: 'idcard_copy')
  String? get idcardCopy;

  String? get resume;

  String? get contract;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeacherSubmitRecordBuilder builder) => builder
    ..uid = ''
    ..bankbookCopy = ''
    ..idcardCopy = ''
    ..resume = ''
    ..contract = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teacher_submit');

  static Stream<TeacherSubmitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeacherSubmitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeacherSubmitRecord._();
  factory TeacherSubmitRecord(
          [void Function(TeacherSubmitRecordBuilder) updates]) =
      _$TeacherSubmitRecord;

  static TeacherSubmitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeacherSubmitRecordData({
  String? uid,
  String? bankbookCopy,
  String? idcardCopy,
  String? resume,
  String? contract,
}) {
  final firestoreData = serializers.toFirestore(
    TeacherSubmitRecord.serializer,
    TeacherSubmitRecord(
      (t) => t
        ..uid = uid
        ..bankbookCopy = bankbookCopy
        ..idcardCopy = idcardCopy
        ..resume = resume
        ..contract = contract,
    ),
  );

  return firestoreData;
}
