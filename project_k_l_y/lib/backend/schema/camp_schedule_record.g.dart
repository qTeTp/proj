// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camp_schedule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CampScheduleRecord> _$campScheduleRecordSerializer =
    new _$CampScheduleRecordSerializer();

class _$CampScheduleRecordSerializer
    implements StructuredSerializer<CampScheduleRecord> {
  @override
  final Iterable<Type> types = const [CampScheduleRecord, _$CampScheduleRecord];
  @override
  final String wireName = 'CampScheduleRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CampScheduleRecord object,
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
    value = object.campSubject;
    if (value != null) {
      result
        ..add('camp_subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campDoc;
    if (value != null) {
      result
        ..add('camp_doc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campLocation;
    if (value != null) {
      result
        ..add('camp_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campDate;
    if (value != null) {
      result
        ..add('camp_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.teacherName;
    if (value != null) {
      result
        ..add('teacher_name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  CampScheduleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CampScheduleRecordBuilder();

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
        case 'camp_subject':
          result.campSubject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camp_doc':
          result.campDoc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camp_location':
          result.campLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camp_date':
          result.campDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'teacher_name':
          result.teacherName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$CampScheduleRecord extends CampScheduleRecord {
  @override
  final String? campId;
  @override
  final String? campSubject;
  @override
  final String? campDoc;
  @override
  final String? campLocation;
  @override
  final DateTime? campDate;
  @override
  final BuiltList<String>? teacherName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CampScheduleRecord(
          [void Function(CampScheduleRecordBuilder)? updates]) =>
      (new CampScheduleRecordBuilder()..update(updates))._build();

  _$CampScheduleRecord._(
      {this.campId,
      this.campSubject,
      this.campDoc,
      this.campLocation,
      this.campDate,
      this.teacherName,
      this.ffRef})
      : super._();

  @override
  CampScheduleRecord rebuild(
          void Function(CampScheduleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampScheduleRecordBuilder toBuilder() =>
      new CampScheduleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampScheduleRecord &&
        campId == other.campId &&
        campSubject == other.campSubject &&
        campDoc == other.campDoc &&
        campLocation == other.campLocation &&
        campDate == other.campDate &&
        teacherName == other.teacherName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, campId.hashCode);
    _$hash = $jc(_$hash, campSubject.hashCode);
    _$hash = $jc(_$hash, campDoc.hashCode);
    _$hash = $jc(_$hash, campLocation.hashCode);
    _$hash = $jc(_$hash, campDate.hashCode);
    _$hash = $jc(_$hash, teacherName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampScheduleRecord')
          ..add('campId', campId)
          ..add('campSubject', campSubject)
          ..add('campDoc', campDoc)
          ..add('campLocation', campLocation)
          ..add('campDate', campDate)
          ..add('teacherName', teacherName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CampScheduleRecordBuilder
    implements Builder<CampScheduleRecord, CampScheduleRecordBuilder> {
  _$CampScheduleRecord? _$v;

  String? _campId;
  String? get campId => _$this._campId;
  set campId(String? campId) => _$this._campId = campId;

  String? _campSubject;
  String? get campSubject => _$this._campSubject;
  set campSubject(String? campSubject) => _$this._campSubject = campSubject;

  String? _campDoc;
  String? get campDoc => _$this._campDoc;
  set campDoc(String? campDoc) => _$this._campDoc = campDoc;

  String? _campLocation;
  String? get campLocation => _$this._campLocation;
  set campLocation(String? campLocation) => _$this._campLocation = campLocation;

  DateTime? _campDate;
  DateTime? get campDate => _$this._campDate;
  set campDate(DateTime? campDate) => _$this._campDate = campDate;

  ListBuilder<String>? _teacherName;
  ListBuilder<String> get teacherName =>
      _$this._teacherName ??= new ListBuilder<String>();
  set teacherName(ListBuilder<String>? teacherName) =>
      _$this._teacherName = teacherName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CampScheduleRecordBuilder() {
    CampScheduleRecord._initializeBuilder(this);
  }

  CampScheduleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campId = $v.campId;
      _campSubject = $v.campSubject;
      _campDoc = $v.campDoc;
      _campLocation = $v.campLocation;
      _campDate = $v.campDate;
      _teacherName = $v.teacherName?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampScheduleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampScheduleRecord;
  }

  @override
  void update(void Function(CampScheduleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampScheduleRecord build() => _build();

  _$CampScheduleRecord _build() {
    _$CampScheduleRecord _$result;
    try {
      _$result = _$v ??
          new _$CampScheduleRecord._(
              campId: campId,
              campSubject: campSubject,
              campDoc: campDoc,
              campLocation: campLocation,
              campDate: campDate,
              teacherName: _teacherName?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'teacherName';
        _teacherName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CampScheduleRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
