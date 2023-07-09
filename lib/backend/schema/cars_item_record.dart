import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarsItemRecord extends FirestoreRecord {
  CarsItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "stats" field.
  List<String>? _stats;
  List<String> get stats => _stats ?? const [];
  bool hasStats() => _stats != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "engine" field.
  String? _engine;
  String get engine => _engine ?? '';
  bool hasEngine() => _engine != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "bodyType" field.
  String? _bodyType;
  String get bodyType => _bodyType ?? '';
  bool hasBodyType() => _bodyType != null;

  // "stering_wheel" field.
  String? _steringWheel;
  String get steringWheel => _steringWheel ?? '';
  bool hasSteringWheel() => _steringWheel != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "drive_unit" field.
  String? _driveUnit;
  String get driveUnit => _driveUnit ?? '';
  bool hasDriveUnit() => _driveUnit != null;

  // "customs" field.
  bool? _customs;
  bool get customs => _customs ?? false;
  bool hasCustoms() => _customs != null;

  // "transmission" field.
  String? _transmission;
  String get transmission => _transmission ?? '';
  bool hasTransmission() => _transmission != null;

  // "mileage" field.
  int? _mileage;
  int get mileage => _mileage ?? 0;
  bool hasMileage() => _mileage != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _stats = getDataList(snapshotData['stats']);
    _price = castToType<int>(snapshotData['price']);
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _engine = snapshotData['engine'] as String?;
    _description = snapshotData['description'] as String?;
    _color = snapshotData['color'] as String?;
    _bodyType = snapshotData['bodyType'] as String?;
    _steringWheel = snapshotData['stering_wheel'] as String?;
    _location = snapshotData['location'] as String?;
    _driveUnit = snapshotData['drive_unit'] as String?;
    _customs = snapshotData['customs'] as bool?;
    _transmission = snapshotData['transmission'] as String?;
    _mileage = castToType<int>(snapshotData['mileage']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars_item');

  static Stream<CarsItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarsItemRecord.fromSnapshot(s));

  static Future<CarsItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarsItemRecord.fromSnapshot(s));

  static CarsItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarsItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarsItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarsItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarsItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarsItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarsItemRecordData({
  String? image,
  String? name,
  int? price,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? year,
  String? engine,
  String? description,
  String? color,
  String? bodyType,
  String? steringWheel,
  String? location,
  String? driveUnit,
  bool? customs,
  String? transmission,
  int? mileage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'price': price,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'year': year,
      'engine': engine,
      'description': description,
      'color': color,
      'bodyType': bodyType,
      'stering_wheel': steringWheel,
      'location': location,
      'drive_unit': driveUnit,
      'customs': customs,
      'transmission': transmission,
      'mileage': mileage,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarsItemRecordDocumentEquality implements Equality<CarsItemRecord> {
  const CarsItemRecordDocumentEquality();

  @override
  bool equals(CarsItemRecord? e1, CarsItemRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.stats, e2?.stats) &&
        e1?.price == e2?.price &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.year == e2?.year &&
        e1?.engine == e2?.engine &&
        e1?.description == e2?.description &&
        e1?.color == e2?.color &&
        e1?.bodyType == e2?.bodyType &&
        e1?.steringWheel == e2?.steringWheel &&
        e1?.location == e2?.location &&
        e1?.driveUnit == e2?.driveUnit &&
        e1?.customs == e2?.customs &&
        e1?.transmission == e2?.transmission &&
        e1?.mileage == e2?.mileage;
  }

  @override
  int hash(CarsItemRecord? e) => const ListEquality().hash([
        e?.image,
        e?.name,
        e?.stats,
        e?.price,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.year,
        e?.engine,
        e?.description,
        e?.color,
        e?.bodyType,
        e?.steringWheel,
        e?.location,
        e?.driveUnit,
        e?.customs,
        e?.transmission,
        e?.mileage
      ]);

  @override
  bool isValidKey(Object? o) => o is CarsItemRecord;
}
