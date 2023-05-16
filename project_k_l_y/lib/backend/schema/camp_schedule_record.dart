import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'camp_schedule_record.g.dart';

abstract class CampScheduleRecord
    implements Built<CampScheduleRecord, CampScheduleRecordBuilder> {
  static Serializer<CampScheduleRecord> get serializer =>
      _$campScheduleRecordSerializer;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'camp_subject')
  String? get campSubject;

  @BuiltValueField(wireName: 'camp_doc')
  String? get campDoc;

  @BuiltValueField(wireName: 'camp_location')
  String? get campLocation;

  @BuiltValueField(wireName: 'camp_date')
  DateTime? get campDate;

  @BuiltValueField(wireName: 'teacher_name')
  BuiltList<String>? get teacherName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CampScheduleRecordBuilder builder) => builder
    ..campId = ''
    ..campSubject = ''
    ..campDoc = ''
    ..campLocation = ''
    ..teacherName = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camp_schedule');

  static Stream<CampScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CampScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CampScheduleRecord._();
  factory CampScheduleRecord(
          [void Function(CampScheduleRecordBuilder) updates]) =
      _$CampScheduleRecord;

  static CampScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCampScheduleRecordData({
  String? campId,
  String? campSubject,
  String? campDoc,
  String? campLocation,
  DateTime? campDate,
}) {
  final firestoreData = serializers.toFirestore(
    CampScheduleRecord.serializer,
    CampScheduleRecord(
      (c) => c
        ..campId = campId
        ..campSubject = campSubject
        ..campDoc = campDoc
        ..campLocation = campLocation
        ..campDate = campDate
        ..teacherName = null,
    ),
  );

  return firestoreData;
}
