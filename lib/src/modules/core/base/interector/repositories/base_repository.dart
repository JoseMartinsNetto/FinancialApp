import 'package:cloud_firestore/cloud_firestore.dart';

import '../../entity/entity.dart';

abstract class BaseRepository<T extends Entity> {
  final FirebaseFirestore firestore;
  final String collectionName;

  const BaseRepository(this.firestore, {required this.collectionName});

  CollectionReference getCollectionRef() {
    return firestore.collection(collectionName);
  }

  Future<QuerySnapshot<Object?>> getSnapshot() {
    return getCollectionRef().get();
  }

  Future<Map<String, dynamic>?> get(String id) async {
    final reference = await getCollectionRef().doc(id).get();

    if (reference.exists) {
      return reference.data() as Map<String, dynamic>;
    }

    return null;
  }
}
