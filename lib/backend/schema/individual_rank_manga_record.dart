import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IndividualRankMangaRecord extends FirestoreRecord {
  IndividualRankMangaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Individual_Rank_Manga_Id" field.
  String? _individualRankMangaId;
  String get individualRankMangaId => _individualRankMangaId ?? '';
  bool hasIndividualRankMangaId() => _individualRankMangaId != null;

  // "Manga_Ranked" field.
  DocumentReference? _mangaRanked;
  DocumentReference? get mangaRanked => _mangaRanked;
  bool hasMangaRanked() => _mangaRanked != null;

  // "Manga_Rank" field.
  int? _mangaRank;
  int get mangaRank => _mangaRank ?? 0;
  bool hasMangaRank() => _mangaRank != null;

  // "Manga_IndividualRank" field.
  DocumentReference? _mangaIndividualRank;
  DocumentReference? get mangaIndividualRank => _mangaIndividualRank;
  bool hasMangaIndividualRank() => _mangaIndividualRank != null;

  void _initializeFields() {
    _individualRankMangaId =
        snapshotData['Individual_Rank_Manga_Id'] as String?;
    _mangaRanked = snapshotData['Manga_Ranked'] as DocumentReference?;
    _mangaRank = castToType<int>(snapshotData['Manga_Rank']);
    _mangaIndividualRank =
        snapshotData['Manga_IndividualRank'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Individual_Rank_Manga');

  static Stream<IndividualRankMangaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IndividualRankMangaRecord.fromSnapshot(s));

  static Future<IndividualRankMangaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IndividualRankMangaRecord.fromSnapshot(s));

  static IndividualRankMangaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IndividualRankMangaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IndividualRankMangaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IndividualRankMangaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IndividualRankMangaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IndividualRankMangaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIndividualRankMangaRecordData({
  String? individualRankMangaId,
  DocumentReference? mangaRanked,
  int? mangaRank,
  DocumentReference? mangaIndividualRank,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Individual_Rank_Manga_Id': individualRankMangaId,
      'Manga_Ranked': mangaRanked,
      'Manga_Rank': mangaRank,
      'Manga_IndividualRank': mangaIndividualRank,
    }.withoutNulls,
  );

  return firestoreData;
}

class IndividualRankMangaRecordDocumentEquality
    implements Equality<IndividualRankMangaRecord> {
  const IndividualRankMangaRecordDocumentEquality();

  @override
  bool equals(IndividualRankMangaRecord? e1, IndividualRankMangaRecord? e2) {
    return e1?.individualRankMangaId == e2?.individualRankMangaId &&
        e1?.mangaRanked == e2?.mangaRanked &&
        e1?.mangaRank == e2?.mangaRank &&
        e1?.mangaIndividualRank == e2?.mangaIndividualRank;
  }

  @override
  int hash(IndividualRankMangaRecord? e) => const ListEquality().hash([
        e?.individualRankMangaId,
        e?.mangaRanked,
        e?.mangaRank,
        e?.mangaIndividualRank
      ]);

  @override
  bool isValidKey(Object? o) => o is IndividualRankMangaRecord;
}
