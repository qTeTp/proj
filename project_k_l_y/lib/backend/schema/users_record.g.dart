// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.affiliation;
    if (value != null) {
      result
        ..add('Affiliation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consentPrivacy;
    if (value != null) {
      result
        ..add('consent_privacy')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.residentRegistrationNumber;
    if (value != null) {
      result
        ..add('resident_registration_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.signature;
    if (value != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Affiliation':
          result.affiliation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consent_privacy':
          result.consentPrivacy = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'resident_registration_number':
          result.residentRegistrationNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DateTime? editedTime;
  @override
  final String? bio;
  @override
  final String? userName;
  @override
  final String? affiliation;
  @override
  final bool? consentPrivacy;
  @override
  final int? residentRegistrationNumber;
  @override
  final BuiltList<String>? address;
  @override
  final String? signature;
  @override
  final String? password;
  @override
  final String? uid;
  @override
  final bool? admin;
  @override
  final String? photoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.createdTime,
      this.phoneNumber,
      this.editedTime,
      this.bio,
      this.userName,
      this.affiliation,
      this.consentPrivacy,
      this.residentRegistrationNumber,
      this.address,
      this.signature,
      this.password,
      this.uid,
      this.admin,
      this.photoUrl,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        editedTime == other.editedTime &&
        bio == other.bio &&
        userName == other.userName &&
        affiliation == other.affiliation &&
        consentPrivacy == other.consentPrivacy &&
        residentRegistrationNumber == other.residentRegistrationNumber &&
        address == other.address &&
        signature == other.signature &&
        password == other.password &&
        uid == other.uid &&
        admin == other.admin &&
        photoUrl == other.photoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, editedTime.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, affiliation.hashCode);
    _$hash = $jc(_$hash, consentPrivacy.hashCode);
    _$hash = $jc(_$hash, residentRegistrationNumber.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('editedTime', editedTime)
          ..add('bio', bio)
          ..add('userName', userName)
          ..add('affiliation', affiliation)
          ..add('consentPrivacy', consentPrivacy)
          ..add('residentRegistrationNumber', residentRegistrationNumber)
          ..add('address', address)
          ..add('signature', signature)
          ..add('password', password)
          ..add('uid', uid)
          ..add('admin', admin)
          ..add('photoUrl', photoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _affiliation;
  String? get affiliation => _$this._affiliation;
  set affiliation(String? affiliation) => _$this._affiliation = affiliation;

  bool? _consentPrivacy;
  bool? get consentPrivacy => _$this._consentPrivacy;
  set consentPrivacy(bool? consentPrivacy) =>
      _$this._consentPrivacy = consentPrivacy;

  int? _residentRegistrationNumber;
  int? get residentRegistrationNumber => _$this._residentRegistrationNumber;
  set residentRegistrationNumber(int? residentRegistrationNumber) =>
      _$this._residentRegistrationNumber = residentRegistrationNumber;

  ListBuilder<String>? _address;
  ListBuilder<String> get address =>
      _$this._address ??= new ListBuilder<String>();
  set address(ListBuilder<String>? address) => _$this._address = address;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _editedTime = $v.editedTime;
      _bio = $v.bio;
      _userName = $v.userName;
      _affiliation = $v.affiliation;
      _consentPrivacy = $v.consentPrivacy;
      _residentRegistrationNumber = $v.residentRegistrationNumber;
      _address = $v.address?.toBuilder();
      _signature = $v.signature;
      _password = $v.password;
      _uid = $v.uid;
      _admin = $v.admin;
      _photoUrl = $v.photoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              editedTime: editedTime,
              bio: bio,
              userName: userName,
              affiliation: affiliation,
              consentPrivacy: consentPrivacy,
              residentRegistrationNumber: residentRegistrationNumber,
              address: _address?.build(),
              signature: signature,
              password: password,
              uid: uid,
              admin: admin,
              photoUrl: photoUrl,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
