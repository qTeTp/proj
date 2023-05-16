import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'camp_subject_record.g.dart';

abstract class CampSubjectRecord
    implements Built<CampSubjectRecord, CampSubjectRecordBuilder> {
  static Serializer<CampSubjectRecord> get serializer =>
      _$campSubjectRecordSerializer;

  @BuiltValueField(wireName: 'subject_id')
  String? get subjectId;

  @BuiltValueField(wireName: 'subject_name')
  String? get subjectName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CampSubjectRecordBuilder builder) => builder
    ..subjectId = ''
    ..subjectName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camp_subject');

  static Stream<CampSubjectRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CampSubjectRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CampSubjectRecord._();
  factory CampSubjectRecord([void Function(CampSubjectRecordBuilder) updates]) =
      _$CampSubjectRecord;

  static CampSubjectRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCampSubjectRecordData({
  String? subjectId,
  String? subjectName,
}) {
  final firestoreData = serializers.toFirestore(
    CampSubjectRecord.serializer,
    CampSubjectRecord(
      (c) => c
        ..subjectId = subjectId
        ..subjectName = subjectName,
    ),
  );

  return firestoreData;
}
