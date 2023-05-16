import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'camp_progress_record.g.dart';

abstract class CampProgressRecord
    implements Built<CampProgressRecord, CampProgressRecordBuilder> {
  static Serializer<CampProgressRecord> get serializer =>
      _$campProgressRecordSerializer;

  @BuiltValueField(wireName: 'confirm_admin')
  String? get confirmAdmin;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'numberof_mainT')
  int? get numberofMainT;

  @BuiltValueField(wireName: 'numberof_supportT')
  int? get numberofSupportT;

  @BuiltValueField(wireName: 'numberof_safeT')
  int? get numberofSafeT;

  int? get progressing;

  @BuiltValueField(wireName: 'numberof_prefortT')
  int? get numberofPrefortT;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CampProgressRecordBuilder builder) => builder
    ..confirmAdmin = ''
    ..campId = ''
    ..numberofMainT = 0
    ..numberofSupportT = 0
    ..numberofSafeT = 0
    ..progressing = 0
    ..numberofPrefortT = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camp_progress');

  static Stream<CampProgressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CampProgressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CampProgressRecord._();
  factory CampProgressRecord(
          [void Function(CampProgressRecordBuilder) updates]) =
      _$CampProgressRecord;

  static CampProgressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCampProgressRecordData({
  String? confirmAdmin,
  String? campId,
  int? numberofMainT,
  int? numberofSupportT,
  int? numberofSafeT,
  int? progressing,
  int? numberofPrefortT,
}) {
  final firestoreData = serializers.toFirestore(
    CampProgressRecord.serializer,
    CampProgressRecord(
      (c) => c
        ..confirmAdmin = confirmAdmin
        ..campId = campId
        ..numberofMainT = numberofMainT
        ..numberofSupportT = numberofSupportT
        ..numberofSafeT = numberofSafeT
        ..progressing = progressing
        ..numberofPrefortT = numberofPrefortT,
    ),
  );

  return firestoreData;
}
