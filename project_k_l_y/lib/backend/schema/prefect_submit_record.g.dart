// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefect_submit_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrefectSubmitRecord> _$prefectSubmitRecordSerializer =
    new _$PrefectSubmitRecordSerializer();

class _$PrefectSubmitRecordSerializer
    implements StructuredSerializer<PrefectSubmitRecord> {
  @override
  final Iterable<Type> types = const [
    PrefectSubmitRecord,
    _$PrefectSubmitRecord
  ];
  @override
  final String wireName = 'PrefectSubmitRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrefectSubmitRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.teacherId;
    if (value != null) {
      result
        ..add('teacher_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campId;
    if (value != null) {
      result
        ..add('camp_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prefectCheck;
    if (value != null) {
      result
        ..add('prefect_check')
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
  PrefectSubmitRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrefectSubmitRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'teacher_id':
          result.teacherId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camp_id':
          result.campId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prefect_check':
          result.prefectCheck = serializers.deserialize(value,
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

class _$PrefectSubmitRecord extends PrefectSubmitRecord {
  @override
  final String? teacherId;
  @override
  final String? campId;
  @override
  final String? prefectCheck;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PrefectSubmitRecord(
          [void Function(PrefectSubmitRecordBuilder)? updates]) =>
      (new PrefectSubmitRecordBuilder()..update(updates))._build();

  _$PrefectSubmitRecord._(
      {this.teacherId, this.campId, this.prefectCheck, this.ffRef})
      : super._();

  @override
  PrefectSubmitRecord rebuild(
          void Function(PrefectSubmitRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefectSubmitRecordBuilder toBuilder() =>
      new PrefectSubmitRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefectSubmitRecord &&
        teacherId == other.teacherId &&
        campId == other.campId &&
        prefectCheck == other.prefectCheck &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, teacherId.hashCode);
    _$hash = $jc(_$hash, campId.hashCode);
    _$hash = $jc(_$hash, prefectCheck.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrefectSubmitRecord')
          ..add('teacherId', teacherId)
          ..add('campId', campId)
          ..add('prefectCheck', prefectCheck)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PrefectSubmitRecordBuilder
    implements Builder<PrefectSubmitRecord, PrefectSubmitRecordBuilder> {
  _$PrefectSubmitRecord? _$v;

  String? _teacherId;
  String? get teacherId => _$this._teacherId;
  set teacherId(String? teacherId) => _$this._teacherId = teacherId;

  String? _campId;
  String? get campId => _$this._campId;
  set campId(String? campId) => _$this._campId = campId;

  String? _prefectCheck;
  String? get prefectCheck => _$this._prefectCheck;
  set prefectCheck(String? prefectCheck) => _$this._prefectCheck = prefectCheck;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PrefectSubmitRecordBuilder() {
    PrefectSubmitRecord._initializeBuilder(this);
  }

  PrefectSubmitRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teacherId = $v.teacherId;
      _campId = $v.campId;
      _prefectCheck = $v.prefectCheck;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefectSubmitRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefectSubmitRecord;
  }

  @override
  void update(void Function(PrefectSubmitRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefectSubmitRecord build() => _build();

  _$PrefectSubmitRecord _build() {
    final _$result = _$v ??
        new _$PrefectSubmitRecord._(
            teacherId: teacherId,
            campId: campId,
            prefectCheck: prefectCheck,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
