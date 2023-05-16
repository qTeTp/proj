import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'school_code_record.g.dart';

abstract class SchoolCodeRecord
    implements Built<SchoolCodeRecord, SchoolCodeRecordBuilder> {
  static Serializer<SchoolCodeRecord> get serializer =>
      _$schoolCodeRecordSerializer;

  @BuiltValueField(wireName: 'school_name')
  String? get schoolName;

  @BuiltValueField(wireName: 'school_code')
  int? get schoolCode;

  @BuiltValueField(wireName: 'school_location')
  String? get schoolLocation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SchoolCodeRecordBuilder builder) => builder
    ..schoolName = ''
    ..schoolCode = 0
    ..schoolLocation = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('school_code');

  static Stream<SchoolCodeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SchoolCodeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SchoolCodeRecord._();
  factory SchoolCodeRecord([void Function(SchoolCodeRecordBuilder) updates]) =
      _$SchoolCodeRecord;

  static SchoolCodeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSchoolCodeRecordData({
  String? schoolName,
  int? schoolCode,
  String? schoolLocation,
}) {
  final firestoreData = serializers.toFirestore(
    SchoolCodeRecord.serializer,
    SchoolCodeRecord(
      (s) => s
        ..schoolName = schoolName
        ..schoolCode = schoolCode
        ..schoolLocation = schoolLocation,
    ),
  );

  return firestoreData;
}
