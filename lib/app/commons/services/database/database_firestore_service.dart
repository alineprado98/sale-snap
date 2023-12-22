import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store/app/commons/services/database/i_database_service.dart';
import 'package:store/app/commons/utils/collections/i_collection.dart';
import 'package:store/app/commons/services/database/database_response.dart';

class DatabaseFirestoreService implements IDatabaseService {
  late final FirebaseFirestore firestore;
  DatabaseFirestoreService() {
    firestore = FirebaseFirestore.instance;
  }

  @override
  Future<DatabaseResponse> create({required ICollection collection}) async {
    try {
      final response = await firestore.collection(collection.collectionName).add(collection.toJson());

      return DatabaseResponse.fromSucces(data: {'id': response.id});
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete({required String collectionName, required String hashDoc}) async {
    try {
      await firestore.collection(collectionName).doc(hashDoc).delete();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DatabaseResponse> update({required ICollection collection, required String hashDoc}) async {
    try {
      firestore.collection(collection.collectionName).doc(hashDoc).update(collection.toJson());
      return DatabaseResponse.fromSucces(data: '');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DatabaseResponse> getAll({required String collectionName, List<FilterParams>? filters}) async {
    try {
      CollectionReference collectionReference = firestore.collection(collectionName);
      Query query = collectionReference;
      if (filters?.isNotEmpty ?? false) {
        for (var item in filters!) {
          query = query.where(item.column, isEqualTo: item.value);
        }
      }
      QuerySnapshot response = await query.get();
      inspect(response);
      List<Map<String, dynamic>> data = response.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> dataMap = document.data() as Map<String, dynamic>;
        dataMap['id'] = document.id;

        return dataMap;
      }).toList();
      return DatabaseResponse.fromSucces(data: data);
    } catch (e) {
      return DatabaseResponse.fromError(error: e);
    }
  }

  @override
  Future<DatabaseResponse> getByHash({required String collectionName, required String hashDoc}) async {
    try {
      final response = firestore.collection(collectionName).doc(hashDoc).get();
      Map<String, dynamic> data = response as Map<String, dynamic>;
      return DatabaseResponse.fromSucces(data: data);
    } catch (e) {
      return DatabaseResponse.fromError(error: e);
    }
  }
}
