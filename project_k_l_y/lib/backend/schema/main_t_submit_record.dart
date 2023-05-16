import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'main_t_submit_record.g.dart';

abstract class MainTSubmitRecord
    implements Built<MainTSubmitRecord, MainTSubmitRecordBuilder> {
  static Serializer<MainTSubmitRecord> get serializer =>
      _$mainTSubmitRecordSerializer;

  @BuiltValueField(wireName: 'camp_id')
  String? get campId;

  @BuiltValueField(wireName: 'teacher_id')
  String? get teacherId;

  @BuiltValueField(wireName: 'pay_bill')
  String? get payBill;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MainTSubmitRecordBuilder builder) => builder
    ..campId = ''
    ..teacherId = ''
    ..payBill = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mainT_submit');

  static Stream<MainTSubmitRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MainTSubmitRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MainTSubmitRecord._();
  factory MainTSubmitRecord([void Function(MainTSubmitRecordBuilder) updates]) =
      _$MainTSubmitRecord;

  static MainTSubmitRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMainTSubmitRecordData({
  String? campId,
  String? teacherId,
  String? payBill,
}) {
  final firestoreData = serializers.toFirestore(
    MainTSubmitRecord.serializer,
    MainTSubmitRecord(
      (m) => m
        ..campId = campId
        ..teacherId = teacherId
        ..payBill = payBill,
    ),
  );

  return firestoreData;
}
