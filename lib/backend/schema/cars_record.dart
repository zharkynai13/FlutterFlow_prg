import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarsRecord extends FirestoreRecord {
  CarsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mark" field.
  String? _mark;
  String get mark => _mark ?? '';
  bool hasMark() => _mark != null;

  // "models" field.
  List<DocumentReference>? _models;
  List<DocumentReference> get models => _models ?? const [];
  bool hasModels() => _models != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "engine" field.
  String? _engine;
  String get engine => _engine ?? '';
  bool hasEngine() => _engine != null;

  void _initializeFields() {
    _mark = snapshotData['mark'] as String?;
    _models = getDataList(snapshotData['models']);
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
    _engine = snapshotData['engine'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarsRecord.fromSnapshot(s));

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarsRecord.fromSnapshot(s));

  static CarsRecord fromSnapshot(DocumentSnapshot snapshot) => CarsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarsRecordData({
  String? mark,
  String? description,
  String? title,
  String? engine,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mark': mark,
      'description': description,
      'title': title,
      'engine': engine,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarsRecordDocumentEquality implements Equality<CarsRecord> {
  const CarsRecordDocumentEquality();

  @override
  bool equals(CarsRecord? e1, CarsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mark == e2?.mark &&
        listEquality.equals(e1?.models, e2?.models) &&
        e1?.description == e2?.description &&
        e1?.title == e2?.title &&
        e1?.engine == e2?.engine;
  }

  @override
  int hash(CarsRecord? e) => const ListEquality()
      .hash([e?.mark, e?.models, e?.description, e?.title, e?.engine]);

  @override
  bool isValidKey(Object? o) => o is CarsRecord;
}
