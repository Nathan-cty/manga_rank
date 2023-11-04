import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IndividualRankRecord extends FirestoreRecord {
  IndividualRankRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "individual_rank_id" field.
  String? _individualRankId;
  String get individualRankId => _individualRankId ?? '';
  bool hasIndividualRankId() => _individualRankId != null;

  // "DateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "RankedBy_ref" field.
  DocumentReference? _rankedByRef;
  DocumentReference? get rankedByRef => _rankedByRef;
  bool hasRankedByRef() => _rankedByRef != null;

  // "Likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "LikedBy_Users" field.
  List<DocumentReference>? _likedByUsers;
  List<DocumentReference> get likedByUsers => _likedByUsers ?? const [];
  bool hasLikedByUsers() => _likedByUsers != null;

  // "isPrivate" field.
  bool? _isPrivate;
  bool get isPrivate => _isPrivate ?? false;
  bool hasIsPrivate() => _isPrivate != null;

  // "Manga_Listed" field.
  List<DocumentReference>? _mangaListed;
  List<DocumentReference> get mangaListed => _mangaListed ?? const [];
  bool hasMangaListed() => _mangaListed != null;

  // "Comments_Ref" field.
  List<DocumentReference>? _commentsRef;
  List<DocumentReference> get commentsRef => _commentsRef ?? const [];
  bool hasCommentsRef() => _commentsRef != null;

  void _initializeFields() {
    _individualRankId = snapshotData['individual_rank_id'] as String?;
    _dateCreated = snapshotData['DateCreated'] as DateTime?;
    _rankedByRef = snapshotData['RankedBy_ref'] as DocumentReference?;
    _likes = castToType<int>(snapshotData['Likes']);
    _likedByUsers = getDataList(snapshotData['LikedBy_Users']);
    _isPrivate = snapshotData['isPrivate'] as bool?;
    _mangaListed = getDataList(snapshotData['Manga_Listed']);
    _commentsRef = getDataList(snapshotData['Comments_Ref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Individual_rank');

  static Stream<IndividualRankRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IndividualRankRecord.fromSnapshot(s));

  static Future<IndividualRankRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IndividualRankRecord.fromSnapshot(s));

  static IndividualRankRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IndividualRankRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IndividualRankRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IndividualRankRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IndividualRankRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IndividualRankRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIndividualRankRecordData({
  String? individualRankId,
  DateTime? dateCreated,
  DocumentReference? rankedByRef,
  int? likes,
  bool? isPrivate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'individual_rank_id': individualRankId,
      'DateCreated': dateCreated,
      'RankedBy_ref': rankedByRef,
      'Likes': likes,
      'isPrivate': isPrivate,
    }.withoutNulls,
  );

  return firestoreData;
}

class IndividualRankRecordDocumentEquality
    implements Equality<IndividualRankRecord> {
  const IndividualRankRecordDocumentEquality();

  @override
  bool equals(IndividualRankRecord? e1, IndividualRankRecord? e2) {
    const listEquality = ListEquality();
    return e1?.individualRankId == e2?.individualRankId &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.rankedByRef == e2?.rankedByRef &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.likedByUsers, e2?.likedByUsers) &&
        e1?.isPrivate == e2?.isPrivate &&
        listEquality.equals(e1?.mangaListed, e2?.mangaListed) &&
        listEquality.equals(e1?.commentsRef, e2?.commentsRef);
  }

  @override
  int hash(IndividualRankRecord? e) => const ListEquality().hash([
        e?.individualRankId,
        e?.dateCreated,
        e?.rankedByRef,
        e?.likes,
        e?.likedByUsers,
        e?.isPrivate,
        e?.mangaListed,
        e?.commentsRef
      ]);

  @override
  bool isValidKey(Object? o) => o is IndividualRankRecord;
}
