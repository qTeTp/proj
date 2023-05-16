import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prefect_submit_record.g.dart';

abstract class PrefectSubmitRecord
    implements Built<PrefectSubmitRecord, PrefectSubmitRecordBuilder> {
  static Serializer<PrefectSubmitRecord> get serializer =>
      _$prefectSubmitRecordSerializer;

  @BuiltValueField(wireName: 'teacher_id')
  String? get teacherId;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'prefect_check')
  String? get prefectCheck;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PrefectSubmitRecordBuilder builder) => builder
    ..teacherId = ''
    ..campId = ''
    ..prefectCheck = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prefect_submit');

  static Stream<PrefectSubmitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PrefectSubmitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PrefectSubmitRecord._();
  factory PrefectSubmitRecord(
          [void Function(PrefectSubmitRecordBuilder) updates]) =
      _$PrefectSubmitRecord;

  static PrefectSubmitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPrefectSubmitRecordData({
  String? teacherId,
  String? campId,
  String? prefectCheck,
}) {
  final firestoreData = serializers.toFirestore(
    PrefectSubmitRecord.serializer,
    PrefectSubmitRecord(
      (p) => p
        ..teacherId = teacherId
        ..campId = campId
        ..prefectCheck = prefectCheck,
    ),
  );

  return firestoreData;
}
