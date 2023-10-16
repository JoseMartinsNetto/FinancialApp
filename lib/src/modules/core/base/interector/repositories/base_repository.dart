import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financial_app/src/modules/core/entity/entity.dart';

abstract class BaseRepository<T extends Entity> {
  final FirebaseFirestore firestore;
  final String collectionName;

  const BaseRepository(this.firestore, {required this.collectionName});

  CollectionReference getCollection() {
    return firestore.collection(collectionName);
  }

  Future<Map<String, dynamic>?> get(String id) async {
    final reference = await getCollection().doc(id).get();

    if (reference.exists) {
      return reference.data() as Map<String, dynamic>;
    }

    return null;
  }
}
