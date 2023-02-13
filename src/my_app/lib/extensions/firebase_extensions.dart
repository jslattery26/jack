import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_jack/models/firebaseuser.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference<FirebaseUser> get usersRef =>
      collection('FirebaseUsers').withConverter<FirebaseUser>(
        fromFirestore: (snapshot, _) {
          final data = snapshot.data()!;
          return FirebaseUser.fromJson(data).copyWith(uid: snapshot.id);
        },
        toFirestore: (model, _) => model.toJson()..remove('id'),
      );

  DocumentReference<FirebaseUser> userRef(String? uid) => usersRef.doc(uid);
}
