import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'Affiliation')
  String? get affiliation;

  @BuiltValueField(wireName: 'consent_privacy')
  bool? get consentPrivacy;

  @BuiltValueField(wireName: 'resident_registration_number')
  int? get residentRegistrationNumber;

  BuiltList<String>? get address;

  String? get signature;

  String? get password;

  String? get uid;

  bool? get admin;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..bio = ''
    ..userName = ''
    ..affiliation = ''
    ..consentPrivacy = false
    ..residentRegistrationNumber = 0
    ..address = ListBuilder()
    ..signature = ''
    ..password = ''
    ..uid = ''
    ..admin = false
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? affiliation,
  bool? consentPrivacy,
  int? residentRegistrationNumber,
  String? signature,
  String? password,
  String? uid,
  bool? admin,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName
        ..affiliation = affiliation
        ..consentPrivacy = consentPrivacy
        ..residentRegistrationNumber = residentRegistrationNumber
        ..address = null
        ..signature = signature
        ..password = password
        ..uid = uid
        ..admin = admin
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
