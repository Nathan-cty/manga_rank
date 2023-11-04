import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OeuvreRecord extends FirestoreRecord {
  OeuvreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description_oeuvre" field.
  String? _descriptionOeuvre;
  String get descriptionOeuvre => _descriptionOeuvre ?? '';
  bool hasDescriptionOeuvre() => _descriptionOeuvre != null;

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  // "anime" field.
  bool? _anime;
  bool get anime => _anime ?? false;
  bool hasAnime() => _anime != null;

  // "oeuvre_id" field.
  String? _oeuvreId;
  String get oeuvreId => _oeuvreId ?? '';
  bool hasOeuvreId() => _oeuvreId != null;

  // "global_rank" field.
  int? _globalRank;
  int get globalRank => _globalRank ?? 0;
  bool hasGlobalRank() => _globalRank != null;

  // "Comments_Ref" field.
  List<DocumentReference>? _commentsRef;
  List<DocumentReference> get commentsRef => _commentsRef ?? const [];
  bool hasCommentsRef() => _commentsRef != null;

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "RankedBy_Users" field.
  List<DocumentReference>? _rankedByUsers;
  List<DocumentReference> get rankedByUsers => _rankedByUsers ?? const [];
  bool hasRankedByUsers() => _rankedByUsers != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _descriptionOeuvre = snapshotData['description_oeuvre'] as String?;
    _genre = snapshotData['genre'] as String?;
    _anime = snapshotData['anime'] as bool?;
    _oeuvreId = snapshotData['oeuvre_id'] as String?;
    _globalRank = castToType<int>(snapshotData['global_rank']);
    _commentsRef = getDataList(snapshotData['Comments_Ref']);
    _photo = snapshotData['Photo'] as String?;
    _rankedByUsers = getDataList(snapshotData['RankedBy_Users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('oeuvre');

  static Stream<OeuvreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OeuvreRecord.fromSnapshot(s));

  static Future<OeuvreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OeuvreRecord.fromSnapshot(s));

  static OeuvreRecord fromSnapshot(DocumentSnapshot snapshot) => OeuvreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OeuvreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OeuvreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OeuvreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OeuvreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOeuvreRecordData({
  String? name,
  String? descriptionOeuvre,
  String? genre,
  bool? anime,
  String? oeuvreId,
  int? globalRank,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description_oeuvre': descriptionOeuvre,
      'genre': genre,
      'anime': anime,
      'oeuvre_id': oeuvreId,
      'global_rank': globalRank,
      'Photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class OeuvreRecordDocumentEquality implements Equality<OeuvreRecord> {
  const OeuvreRecordDocumentEquality();

  @override
  bool equals(OeuvreRecord? e1, OeuvreRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.descriptionOeuvre == e2?.descriptionOeuvre &&
        e1?.genre == e2?.genre &&
        e1?.anime == e2?.anime &&
        e1?.oeuvreId == e2?.oeuvreId &&
        e1?.globalRank == e2?.globalRank &&
        listEquality.equals(e1?.commentsRef, e2?.commentsRef) &&
        e1?.photo == e2?.photo &&
        listEquality.equals(e1?.rankedByUsers, e2?.rankedByUsers);
  }

  @override
  int hash(OeuvreRecord? e) => const ListEquality().hash([
        e?.name,
        e?.descriptionOeuvre,
        e?.genre,
        e?.anime,
        e?.oeuvreId,
        e?.globalRank,
        e?.commentsRef,
        e?.photo,
        e?.rankedByUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is OeuvreRecord;
}
