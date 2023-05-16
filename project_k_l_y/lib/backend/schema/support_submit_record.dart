import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'support_submit_record.g.dart';

abstract class SupportSubmitRecord
    implements Built<SupportSubmitRecord, SupportSubmitRecordBuilder> {
  static Serializer<SupportSubmitRecord> get serializer =>
      _$supportSubmitRecordSerializer;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'teacher_id')
  String? get teacherId;

  @BuiltValueField(wireName: 'pay_bill')
  String? get payBill;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SupportSubmitRecordBuilder builder) => builder
    ..campId = ''
    ..teacherId = ''
    ..payBill = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('support_submit');

  static Stream<SupportSubmitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SupportSubmitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SupportSubmitRecord._();
  factory SupportSubmitRecord(
          [void Function(SupportSubmitRecordBuilder) updates]) =
      _$SupportSubmitRecord;

  static SupportSubmitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSupportSubmitRecordData({
  String? campId,
  String? teacherId,
  String? payBill,
}) {
  final firestoreData = serializers.toFirestore(
    SupportSubmitRecord.serializer,
    SupportSubmitRecord(
      (s) => s
        ..campId = campId
        ..teacherId = teacherId
        ..payBill = payBill,
    ),
  );

  return firestoreData;
}
