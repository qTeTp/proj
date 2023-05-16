// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camp_progress_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CampProgressRecord> _$campProgressRecordSerializer =
    new _$CampProgressRecordSerializer();

class _$CampProgressRecordSerializer
    implements StructuredSerializer<CampProgressRecord> {
  @override
  final Iterable<Type> types = const [CampProgressRecord, _$CampProgressRecord];
  @override
  final String wireName = 'CampProgressRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CampProgressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.confirmAdmin;
    if (value != null) {
      result
        ..add('confirm_admin')
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
    value = object.numberofMainT;
    if (value != null) {
      result
        ..add('numberof_mainT')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberofSupportT;
    if (value != null) {
      result
        ..add('numberof_supportT')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberofSafeT;
    if (value != null) {
      result
        ..add('numberof_safeT')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progressing;
    if (value != null) {
      result
        ..add('progressing')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberofPrefortT;
    if (value != null) {
      result
        ..add('numberof_prefortT')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CampProgressRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CampProgressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'confirm_admin':
          result.confirmAdmin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camp_id':
          result.campId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numberof_mainT':
          result.numberofMainT = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numberof_supportT':
          result.numberofSupportT = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numberof_safeT':
          result.numberofSafeT = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progressing':
          result.progressing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numberof_prefortT':
          result.numberofPrefortT = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CampProgressRecord extends CampProgressRecord {
  @override
  final String? confirmAdmin;
  @override
  final String? campId;
  @override
  final int? numberofMainT;
  @override
  final int? numberofSupportT;
  @override
  final int? numberofSafeT;
  @override
  final int? progressing;
  @override
  final int? numberofPrefortT;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CampProgressRecord(
          [void Function(CampProgressRecordBuilder)? updates]) =>
      (new CampProgressRecordBuilder()..update(updates))._build();

  _$CampProgressRecord._(
      {this.confirmAdmin,
      this.campId,
      this.numberofMainT,
      this.numberofSupportT,
      this.numberofSafeT,
      this.progressing,
      this.numberofPrefortT,
      this.ffRef})
      : super._();

  @override
  CampProgressRecord rebuild(
          void Function(CampProgressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampProgressRecordBuilder toBuilder() =>
      new CampProgressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampProgressRecord &&
        confirmAdmin == other.confirmAdmin &&
        campId == other.campId &&
        numberofMainT == other.numberofMainT &&
        numberofSupportT == other.numberofSupportT &&
        numberofSafeT == other.numberofSafeT &&
        progressing == other.progressing &&
        numberofPrefortT == other.numberofPrefortT &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmAdmin.hashCode);
    _$hash = $jc(_$hash, campId.hashCode);
    _$hash = $jc(_$hash, numberofMainT.hashCode);
    _$hash = $jc(_$hash, numberofSupportT.hashCode);
    _$hash = $jc(_$hash, numberofSafeT.hashCode);
    _$hash = $jc(_$hash, progressing.hashCode);
    _$hash = $jc(_$hash, numberofPrefortT.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampProgressRecord')
          ..add('confirmAdmin', confirmAdmin)
          ..add('campId', campId)
          ..add('numberofMainT', numberofMainT)
          ..add('numberofSupportT', numberofSupportT)
          ..add('numberofSafeT', numberofSafeT)
          ..add('progressing', progressing)
          ..add('numberofPrefortT', numberofPrefortT)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CampProgressRecordBuilder
    implements Builder<CampProgressRecord, CampProgressRecordBuilder> {
  _$CampProgressRecord? _$v;

  String? _confirmAdmin;
  String? get confirmAdmin => _$this._confirmAdmin;
  set confirmAdmin(String? confirmAdmin) => _$this._confirmAdmin = confirmAdmin;

  String? _campId;
  String? get campId => _$this._campId;
  set campId(String? campId) => _$this._campId = campId;

  int? _numberofMainT;
  int? get numberofMainT => _$this._numberofMainT;
  set numberofMainT(int? numberofMainT) =>
      _$this._numberofMainT = numberofMainT;

  int? _numberofSupportT;
  int? get numberofSupportT => _$this._numberofSupportT;
  set numberofSupportT(int? numberofSupportT) =>
      _$this._numberofSupportT = numberofSupportT;

  int? _numberofSafeT;
  int? get numberofSafeT => _$this._numberofSafeT;
  set numberofSafeT(int? numberofSafeT) =>
      _$this._numberofSafeT = numberofSafeT;

  int? _progressing;
  int? get progressing => _$this._progressing;
  set progressing(int? progressing) => _$this._progressing = progressing;

  int? _numberofPrefortT;
  int? get numberofPrefortT => _$this._numberofPrefortT;
  set numberofPrefortT(int? numberofPrefortT) =>
      _$this._numberofPrefortT = numberofPrefortT;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CampProgressRecordBuilder() {
    CampProgressRecord._initializeBuilder(this);
  }

  CampProgressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmAdmin = $v.confirmAdmin;
      _campId = $v.campId;
      _numberofMainT = $v.numberofMainT;
      _numberofSupportT = $v.numberofSupportT;
      _numberofSafeT = $v.numberofSafeT;
      _progressing = $v.progressing;
      _numberofPrefortT = $v.numberofPrefortT;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampProgressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampProgressRecord;
  }

  @override
  void update(void Function(CampProgressRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampProgressRecord build() => _build();

  _$CampProgressRecord _build() {
    final _$result = _$v ??
        new _$CampProgressRecord._(
            confirmAdmin: confirmAdmin,
            campId: campId,
            numberofMainT: numberofMainT,
            numberofSupportT: numberofSupportT,
            numberofSafeT: numberofSafeT,
            progressing: progressing,
            numberofPrefortT: numberofPrefortT,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
