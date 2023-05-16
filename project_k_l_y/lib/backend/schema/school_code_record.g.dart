// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_code_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchoolCodeRecord> _$schoolCodeRecordSerializer =
    new _$SchoolCodeRecordSerializer();

class _$SchoolCodeRecordSerializer
    implements StructuredSerializer<SchoolCodeRecord> {
  @override
  final Iterable<Type> types = const [SchoolCodeRecord, _$SchoolCodeRecord];
  @override
  final String wireName = 'SchoolCodeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SchoolCodeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.schoolName;
    if (value != null) {
      result
        ..add('school_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schoolCode;
    if (value != null) {
      result
        ..add('school_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.schoolLocation;
    if (value != null) {
      result
        ..add('school_location')
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
  SchoolCodeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SchoolCodeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'school_name':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'school_code':
          result.schoolCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'school_location':
          result.schoolLocation = serializers.deserialize(value,
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

class _$SchoolCodeRecord extends SchoolCodeRecord {
  @override
  final String? schoolName;
  @override
  final int? schoolCode;
  @override
  final String? schoolLocation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SchoolCodeRecord(
          [void Function(SchoolCodeRecordBuilder)? updates]) =>
      (new SchoolCodeRecordBuilder()..update(updates))._build();

  _$SchoolCodeRecord._(
      {this.schoolName, this.schoolCode, this.schoolLocation, this.ffRef})
      : super._();

  @override
  SchoolCodeRecord rebuild(void Function(SchoolCodeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchoolCodeRecordBuilder toBuilder() =>
      new SchoolCodeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchoolCodeRecord &&
        schoolName == other.schoolName &&
        schoolCode == other.schoolCode &&
        schoolLocation == other.schoolLocation &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, schoolName.hashCode);
    _$hash = $jc(_$hash, schoolCode.hashCode);
    _$hash = $jc(_$hash, schoolLocation.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchoolCodeRecord')
          ..add('schoolName', schoolName)
          ..add('schoolCode', schoolCode)
          ..add('schoolLocation', schoolLocation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SchoolCodeRecordBuilder
    implements Builder<SchoolCodeRecord, SchoolCodeRecordBuilder> {
  _$SchoolCodeRecord? _$v;

  String? _schoolName;
  String? get schoolName => _$this._schoolName;
  set schoolName(String? schoolName) => _$this._schoolName = schoolName;

  int? _schoolCode;
  int? get schoolCode => _$this._schoolCode;
  set schoolCode(int? schoolCode) => _$this._schoolCode = schoolCode;

  String? _schoolLocation;
  String? get schoolLocation => _$this._schoolLocation;
  set schoolLocation(String? schoolLocation) =>
      _$this._schoolLocation = schoolLocation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SchoolCodeRecordBuilder() {
    SchoolCodeRecord._initializeBuilder(this);
  }

  SchoolCodeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schoolName = $v.schoolName;
      _schoolCode = $v.schoolCode;
      _schoolLocation = $v.schoolLocation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchoolCodeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SchoolCodeRecord;
  }

  @override
  void update(void Function(SchoolCodeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchoolCodeRecord build() => _build();

  _$SchoolCodeRecord _build() {
    final _$result = _$v ??
        new _$SchoolCodeRecord._(
            schoolName: schoolName,
            schoolCode: schoolCode,
            schoolLocation: schoolLocation,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
