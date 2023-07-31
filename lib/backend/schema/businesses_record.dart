import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessesRecord extends FirestoreRecord {
  BusinessesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "open" field.
  DateTime? _open;
  DateTime? get open => _open;
  bool hasOpen() => _open != null;

  // "close" field.
  DateTime? _close;
  DateTime? get close => _close;
  bool hasClose() => _close != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _address = snapshotData['address'] as String?;
    _image = snapshotData['image'] as String?;
    _open = snapshotData['open'] as DateTime?;
    _close = snapshotData['close'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Businesses');

  static Stream<BusinessesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessesRecord.fromSnapshot(s));

  static Future<BusinessesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessesRecord.fromSnapshot(s));

  static BusinessesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessesRecordData({
  String? name,
  String? category,
  String? address,
  String? image,
  DateTime? open,
  DateTime? close,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'address': address,
      'image': image,
      'open': open,
      'close': close,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessesRecordDocumentEquality implements Equality<BusinessesRecord> {
  const BusinessesRecordDocumentEquality();

  @override
  bool equals(BusinessesRecord? e1, BusinessesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.address == e2?.address &&
        e1?.image == e2?.image &&
        e1?.open == e2?.open &&
        e1?.close == e2?.close &&
        e1?.location == e2?.location;
  }

  @override
  int hash(BusinessesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.address,
        e?.image,
        e?.open,
        e?.close,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessesRecord;
}
