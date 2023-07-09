import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarUserRecord extends FirestoreRecord {
  CarUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mark" field.
  String? _mark;
  String get mark => _mark ?? '';
  bool hasMark() => _mark != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "date_of_issue" field.
  int? _dateOfIssue;
  int get dateOfIssue => _dateOfIssue ?? 0;
  bool hasDateOfIssue() => _dateOfIssue != null;

  // "engine" field.
  String? _engine;
  String get engine => _engine ?? '';
  bool hasEngine() => _engine != null;

  // "drive_unit" field.
  String? _driveUnit;
  String get driveUnit => _driveUnit ?? '';
  bool hasDriveUnit() => _driveUnit != null;

  // "transmission" field.
  String? _transmission;
  String get transmission => _transmission ?? '';
  bool hasTransmission() => _transmission != null;

  // "steering_wheel" field.
  String? _steeringWheel;
  String get steeringWheel => _steeringWheel ?? '';
  bool hasSteeringWheel() => _steeringWheel != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "body_type" field.
  String? _bodyType;
  String get bodyType => _bodyType ?? '';
  bool hasBodyType() => _bodyType != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "customs_cleared" field.
  bool? _customsCleared;
  bool get customsCleared => _customsCleared ?? false;
  bool hasCustomsCleared() => _customsCleared != null;

  void _initializeFields() {
    _mark = snapshotData['mark'] as String?;
    _model = snapshotData['model'] as String?;
    _image = snapshotData['image'] as String?;
    _dateOfIssue = castToType<int>(snapshotData['date_of_issue']);
    _engine = snapshotData['engine'] as String?;
    _driveUnit = snapshotData['drive_unit'] as String?;
    _transmission = snapshotData['transmission'] as String?;
    _steeringWheel = snapshotData['steering_wheel'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _bodyType = snapshotData['body_type'] as String?;
    _state = snapshotData['state'] as String?;
    _customsCleared = snapshotData['customs_cleared'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car_user');

  static Stream<CarUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarUserRecord.fromSnapshot(s));

  static Future<CarUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarUserRecord.fromSnapshot(s));

  static CarUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarUserRecordData({
  String? mark,
  String? model,
  String? image,
  int? dateOfIssue,
  String? engine,
  String? driveUnit,
  String? transmission,
  String? steeringWheel,
  Color? color,
  String? bodyType,
  String? state,
  bool? customsCleared,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mark': mark,
      'model': model,
      'image': image,
      'date_of_issue': dateOfIssue,
      'engine': engine,
      'drive_unit': driveUnit,
      'transmission': transmission,
      'steering_wheel': steeringWheel,
      'color': color,
      'body_type': bodyType,
      'state': state,
      'customs_cleared': customsCleared,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarUserRecordDocumentEquality implements Equality<CarUserRecord> {
  const CarUserRecordDocumentEquality();

  @override
  bool equals(CarUserRecord? e1, CarUserRecord? e2) {
    return e1?.mark == e2?.mark &&
        e1?.model == e2?.model &&
        e1?.image == e2?.image &&
        e1?.dateOfIssue == e2?.dateOfIssue &&
        e1?.engine == e2?.engine &&
        e1?.driveUnit == e2?.driveUnit &&
        e1?.transmission == e2?.transmission &&
        e1?.steeringWheel == e2?.steeringWheel &&
        e1?.color == e2?.color &&
        e1?.bodyType == e2?.bodyType &&
        e1?.state == e2?.state &&
        e1?.customsCleared == e2?.customsCleared;
  }

  @override
  int hash(CarUserRecord? e) => const ListEquality().hash([
        e?.mark,
        e?.model,
        e?.image,
        e?.dateOfIssue,
        e?.engine,
        e?.driveUnit,
        e?.transmission,
        e?.steeringWheel,
        e?.color,
        e?.bodyType,
        e?.state,
        e?.customsCleared
      ]);

  @override
  bool isValidKey(Object? o) => o is CarUserRecord;
}
