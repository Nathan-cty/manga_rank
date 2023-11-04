import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CommentID" field.
  String? _commentID;
  String get commentID => _commentID ?? '';
  bool hasCommentID() => _commentID != null;

  // "DateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "Content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "Likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "LikesBy_Users" field.
  List<DocumentReference>? _likesByUsers;
  List<DocumentReference> get likesByUsers => _likesByUsers ?? const [];
  bool hasLikesByUsers() => _likesByUsers != null;

  // "CreatedBy_Ref" field.
  DocumentReference? _createdByRef;
  DocumentReference? get createdByRef => _createdByRef;
  bool hasCreatedByRef() => _createdByRef != null;

  // "oeuvre_Ref" field.
  DocumentReference? _oeuvreRef;
  DocumentReference? get oeuvreRef => _oeuvreRef;
  bool hasOeuvreRef() => _oeuvreRef != null;

  void _initializeFields() {
    _commentID = snapshotData['CommentID'] as String?;
    _dateCreated = snapshotData['DateCreated'] as DateTime?;
    _content = snapshotData['Content'] as String?;
    _likes = castToType<int>(snapshotData['Likes']);
    _likesByUsers = getDataList(snapshotData['LikesBy_Users']);
    _createdByRef = snapshotData['CreatedBy_Ref'] as DocumentReference?;
    _oeuvreRef = snapshotData['oeuvre_Ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentID,
  DateTime? dateCreated,
  String? content,
  int? likes,
  DocumentReference? createdByRef,
  DocumentReference? oeuvreRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CommentID': commentID,
      'DateCreated': dateCreated,
      'Content': content,
      'Likes': likes,
      'CreatedBy_Ref': createdByRef,
      'oeuvre_Ref': oeuvreRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentID == e2?.commentID &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.content == e2?.content &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.likesByUsers, e2?.likesByUsers) &&
        e1?.createdByRef == e2?.createdByRef &&
        e1?.oeuvreRef == e2?.oeuvreRef;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentID,
        e?.dateCreated,
        e?.content,
        e?.likes,
        e?.likesByUsers,
        e?.createdByRef,
        e?.oeuvreRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
