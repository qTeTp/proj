// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_submit_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeacherSubmitRecord> _$teacherSubmitRecordSerializer =
    new _$TeacherSubmitRecordSerializer();

class _$TeacherSubmitRecordSerializer
    implements StructuredSerializer<TeacherSubmitRecord> {
  @override
  final Iterable<Type> types = const [
    TeacherSubmitRecord,
    _$TeacherSubmitRecord
  ];
  @override
  final String wireName = 'TeacherSubmitRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeacherSubmitRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankbookCopy;
    if (value != null) {
      result
        ..add('bankbook_copy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idcardCopy;
    if (value != null) {
      result
        ..add('idcard_copy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resume;
    if (value != null) {
      result
        ..add('resume')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contract;
    if (value != null) {
      result
        ..add('contract')
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
  TeacherSubmitRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeacherSubmitRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bankbook_copy':
          result.bankbookCopy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idcard_copy':
          result.idcardCopy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'resume':
          result.resume = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contract':
          result.contract = serializers.deserialize(value,
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

class _$TeacherSubmitRecord extends TeacherSubmitRecord {
  @override
  final String? uid;
  @override
  final String? bankbookCopy;
  @override
  final String? idcardCopy;
  @override
  final String? resume;
  @override
  final String? contract;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TeacherSubmitRecord(
          [void Function(TeacherSubmitRecordBuilder)? updates]) =>
      (new TeacherSubmitRecordBuilder()..update(updates))._build();

  _$TeacherSubmitRecord._(
      {this.uid,
      this.bankbookCopy,
      this.idcardCopy,
      this.resume,
      this.contract,
      this.ffRef})
      : super._();

  @override
  TeacherSubmitRecord rebuild(
          void Function(TeacherSubmitRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeacherSubmitRecordBuilder toBuilder() =>
      new TeacherSubmitRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeacherSubmitRecord &&
        uid == other.uid &&
        bankbookCopy == other.bankbookCopy &&
        idcardCopy == other.idcardCopy &&
        resume == other.resume &&
        contract == other.contract &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, bankbookCopy.hashCode);
    _$hash = $jc(_$hash, idcardCopy.hashCode);
    _$hash = $jc(_$hash, resume.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeacherSubmitRecord')
          ..add('uid', uid)
          ..add('bankbookCopy', bankbookCopy)
          ..add('idcardCopy', idcardCopy)
          ..add('resume', resume)
          ..add('contract', contract)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TeacherSubmitRecordBuilder
    implements Builder<TeacherSubmitRecord, TeacherSubmitRecordBuilder> {
  _$TeacherSubmitRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _bankbookCopy;
  String? get bankbookCopy => _$this._bankbookCopy;
  set bankbookCopy(String? bankbookCopy) => _$this._bankbookCopy = bankbookCopy;

  String? _idcardCopy;
  String? get idcardCopy => _$this._idcardCopy;
  set idcardCopy(String? idcardCopy) => _$this._idcardCopy = idcardCopy;

  String? _resume;
  String? get resume => _$this._resume;
  set resume(String? resume) => _$this._resume = resume;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TeacherSubmitRecordBuilder() {
    TeacherSubmitRecord._initializeBuilder(this);
  }

  TeacherSubmitRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _bankbookCopy = $v.bankbookCopy;
      _idcardCopy = $v.idcardCopy;
      _resume = $v.resume;
      _contract = $v.contract;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeacherSubmitRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeacherSubmitRecord;
  }

  @override
  void update(void Function(TeacherSubmitRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeacherSubmitRecord build() => _build();

  _$TeacherSubmitRecord _build() {
    final _$result = _$v ??
        new _$TeacherSubmitRecord._(
            uid: uid,
            bankbookCopy: bankbookCopy,
            idcardCopy: idcardCopy,
            resume: resume,
            contract: contract,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
