// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camp_subject_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CampSubjectRecord> _$campSubjectRecordSerializer =
    new _$CampSubjectRecordSerializer();

class _$CampSubjectRecordSerializer
    implements StructuredSerializer<CampSubjectRecord> {
  @override
  final Iterable<Type> types = const [CampSubjectRecord, _$CampSubjectRecord];
  @override
  final String wireName = 'CampSubjectRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CampSubjectRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subjectId;
    if (value != null) {
      result
        ..add('subject_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subjectName;
    if (value != null) {
      result
        ..add('subject_name')
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
  CampSubjectRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CampSubjectRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subject_id':
          result.subjectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subject_name':
          result.subjectName = serializers.deserialize(value,
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

class _$CampSubjectRecord extends CampSubjectRecord {
  @override
  final String? subjectId;
  @override
  final String? subjectName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CampSubjectRecord(
          [void Function(CampSubjectRecordBuilder)? updates]) =>
      (new CampSubjectRecordBuilder()..update(updates))._build();

  _$CampSubjectRecord._({this.subjectId, this.subjectName, this.ffRef})
      : super._();

  @override
  CampSubjectRecord rebuild(void Function(CampSubjectRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampSubjectRecordBuilder toBuilder() =>
      new CampSubjectRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampSubjectRecord &&
        subjectId == other.subjectId &&
        subjectName == other.subjectName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subjectId.hashCode);
    _$hash = $jc(_$hash, subjectName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampSubjectRecord')
          ..add('subjectId', subjectId)
          ..add('subjectName', subjectName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CampSubjectRecordBuilder
    implements Builder<CampSubjectRecord, CampSubjectRecordBuilder> {
  _$CampSubjectRecord? _$v;

  String? _subjectId;
  String? get subjectId => _$this._subjectId;
  set subjectId(String? subjectId) => _$this._subjectId = subjectId;

  String? _subjectName;
  String? get subjectName => _$this._subjectName;
  set subjectName(String? subjectName) => _$this._subjectName = subjectName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CampSubjectRecordBuilder() {
    CampSubjectRecord._initializeBuilder(this);
  }

  CampSubjectRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subjectId = $v.subjectId;
      _subjectName = $v.subjectName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampSubjectRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampSubjectRecord;
  }

  @override
  void update(void Function(CampSubjectRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampSubjectRecord build() => _build();

  _$CampSubjectRecord _build() {
    final _$result = _$v ??
        new _$CampSubjectRecord._(
            subjectId: subjectId, subjectName: subjectName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
