// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_t_submit_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SafeTSubmitRecord> _$safeTSubmitRecordSerializer =
    new _$SafeTSubmitRecordSerializer();

class _$SafeTSubmitRecordSerializer
    implements StructuredSerializer<SafeTSubmitRecord> {
  @override
  final Iterable<Type> types = const [SafeTSubmitRecord, _$SafeTSubmitRecord];
  @override
  final String wireName = 'SafeTSubmitRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SafeTSubmitRecord object,
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
    value = object.safeTCheck;
    if (value != null) {
      result
        ..add('safeT_check')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.safeDoc;
    if (value != null) {
      result
        ..add('safe_doc')
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
  SafeTSubmitRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SafeTSubmitRecordBuilder();

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
        case 'safeT_check':
          result.safeTCheck = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'safe_doc':
          result.safeDoc = serializers.deserialize(value,
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

class _$SafeTSubmitRecord extends SafeTSubmitRecord {
  @override
  final String? campId;
  @override
  final String? teacherId;
  @override
  final String? payBill;
  @override
  final String? safeTCheck;
  @override
  final String? safeDoc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SafeTSubmitRecord(
          [void Function(SafeTSubmitRecordBuilder)? updates]) =>
      (new SafeTSubmitRecordBuilder()..update(updates))._build();

  _$SafeTSubmitRecord._(
      {this.campId,
      this.teacherId,
      this.payBill,
      this.safeTCheck,
      this.safeDoc,
      this.ffRef})
      : super._();

  @override
  SafeTSubmitRecord rebuild(void Function(SafeTSubmitRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SafeTSubmitRecordBuilder toBuilder() =>
      new SafeTSubmitRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SafeTSubmitRecord &&
        campId == other.campId &&
        teacherId == other.teacherId &&
        payBill == other.payBill &&
        safeTCheck == other.safeTCheck &&
        safeDoc == other.safeDoc &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, campId.hashCode);
    _$hash = $jc(_$hash, teacherId.hashCode);
    _$hash = $jc(_$hash, payBill.hashCode);
    _$hash = $jc(_$hash, safeTCheck.hashCode);
    _$hash = $jc(_$hash, safeDoc.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SafeTSubmitRecord')
          ..add('campId', campId)
          ..add('teacherId', teacherId)
          ..add('payBill', payBill)
          ..add('safeTCheck', safeTCheck)
          ..add('safeDoc', safeDoc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SafeTSubmitRecordBuilder
    implements Builder<SafeTSubmitRecord, SafeTSubmitRecordBuilder> {
  _$SafeTSubmitRecord? _$v;

  String? _campId;
  String? get campId => _$this._campId;
  set campId(String? campId) => _$this._campId = campId;

  String? _teacherId;
  String? get teacherId => _$this._teacherId;
  set teacherId(String? teacherId) => _$this._teacherId = teacherId;

  String? _payBill;
  String? get payBill => _$this._payBill;
  set payBill(String? payBill) => _$this._payBill = payBill;

  String? _safeTCheck;
  String? get safeTCheck => _$this._safeTCheck;
  set safeTCheck(String? safeTCheck) => _$this._safeTCheck = safeTCheck;

  String? _safeDoc;
  String? get safeDoc => _$this._safeDoc;
  set safeDoc(String? safeDoc) => _$this._safeDoc = safeDoc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SafeTSubmitRecordBuilder() {
    SafeTSubmitRecord._initializeBuilder(this);
  }

  SafeTSubmitRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campId = $v.campId;
      _teacherId = $v.teacherId;
      _payBill = $v.payBill;
      _safeTCheck = $v.safeTCheck;
      _safeDoc = $v.safeDoc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SafeTSubmitRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SafeTSubmitRecord;
  }

  @override
  void update(void Function(SafeTSubmitRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SafeTSubmitRecord build() => _build();

  _$SafeTSubmitRecord _build() {
    final _$result = _$v ??
        new _$SafeTSubmitRecord._(
            campId: campId,
            teacherId: teacherId,
            payBill: payBill,
            safeTCheck: safeTCheck,
            safeDoc: safeDoc,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
