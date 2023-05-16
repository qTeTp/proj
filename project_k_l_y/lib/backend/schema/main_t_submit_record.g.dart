// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_t_submit_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainTSubmitRecord> _$mainTSubmitRecordSerializer =
    new _$MainTSubmitRecordSerializer();

class _$MainTSubmitRecordSerializer
    implements StructuredSerializer<MainTSubmitRecord> {
  @override
  final Iterable<Type> types = const [MainTSubmitRecord, _$MainTSubmitRecord];
  @override
  final String wireName = 'MainTSubmitRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainTSubmitRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.campId;
    if (value != null) {
      result
        ..add('camp_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teacherId;
    if (value != null) {
      result
        ..add('teacher_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.payBill;
    if (value != null) {
      result
        ..add('pay_bill')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MainTSubmitRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainTSubmitRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'camp_id':
          result.campId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teacher_id':
          result.teacherId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pay_bill':
          result.payBill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MainTSubmitRecord extends MainTSubmitRecord {
  @override
  final String? campId;
  @override
  final String? teacherId;
  @override
  final String? payBill;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MainTSubmitRecord(
          [void Function(MainTSubmitRecordBuilder)? updates]) =>
      (new MainTSubmitRecordBuilder()..update(updates))._build();

  _$MainTSubmitRecord._({this.campId, this.teacherId, this.payBill, this.ffRef})
      : super._();

  @override
  MainTSubmitRecord rebuild(void Function(MainTSubmitRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainTSubmitRecordBuilder toBuilder() =>
      new MainTSubmitRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainTSubmitRecord &&
        campId == other.campId &&
        teacherId == other.teacherId &&
        payBill == other.payBill &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, campId.hashCode);
    _$hash = $jc(_$hash, teacherId.hashCode);
    _$hash = $jc(_$hash, payBill.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainTSubmitRecord')
          ..add('campId', campId)
          ..add('teacherId', teacherId)
          ..add('payBill', payBill)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MainTSubmitRecordBuilder
    implements Builder<MainTSubmitRecord, MainTSubmitRecordBuilder> {
  _$MainTSubmitRecord? _$v;

  String? _campId;
  String? get campId => _$this._campId;
  set campId(String? campId) => _$this._campId = campId;

  String? _teacherId;
  String? get teacherId => _$this._teacherId;
  set teacherId(String? teacherId) => _$this._teacherId = teacherId;

  String? _payBill;
  String? get payBill => _$this._payBill;
  set payBill(String? payBill) => _$this._payBill = payBill;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MainTSubmitRecordBuilder() {
    MainTSubmitRecord._initializeBuilder(this);
  }

  MainTSubmitRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campId = $v.campId;
      _teacherId = $v.teacherId;
      _payBill = $v.payBill;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainTSubmitRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainTSubmitRecord;
  }

  @override
  void update(void Function(MainTSubmitRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainTSubmitRecord build() => _build();

  _$MainTSubmitRecord _build() {
    final _$result = _$v ??
        new _$MainTSubmitRecord._(
            campId: campId,
            teacherId: teacherId,
            payBill: payBill,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
