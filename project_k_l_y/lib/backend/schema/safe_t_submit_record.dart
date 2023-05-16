import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'safe_t_submit_record.g.dart';

abstract class SafeTSubmitRecord
    implements Built<SafeTSubmitRecord, SafeTSubmitRecordBuilder> {
  static Serializer<SafeTSubmitRecord> get serializer =>
      _$safeTSubmitRecordSerializer;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'teacher_id')
  String? get teacherId;

  @BuiltValueField(wireName: 'pay_bill')
  String? get payBill;

  @BuiltValueField(wireName: 'safeT_check')
  String? get safeTCheck;

  @BuiltValueField(wireName: 'safe_doc')
  String? get safeDoc;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SafeTSubmitRecordBuilder builder) => builder
    ..campId = ''
    ..teacherId = ''
    ..payBill = ''
    ..safeTCheck = ''
    ..safeDoc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('safeT_submit');

  static Stream<SafeTSubmitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SafeTSubmitRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SafeTSubmitRecord._();
  factory SafeTSubmitRecord([void Function(SafeTSubmitRecordBuilder) updates]) =
      _$SafeTSubmitRecord;

  static SafeTSubmitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSafeTSubmitRecordData({
  String? campId,
  String? teacherId,
  String? payBill,
  String? safeTCheck,
  String? safeDoc,
}) {
  final firestoreData = serializers.toFirestore(
    SafeTSubmitRecord.serializer,
    SafeTSubmitRecord(
      (s) => s
        ..campId = campId
        ..teacherId = teacherId
        ..payBill = payBill
        ..safeTCheck = safeTCheck
        ..safeDoc = safeDoc,
    ),
  );

  return firestoreData;
}
