import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseModel {
  Future addData(Map<String, dynamic> datainfoMap, String id) async {
    await FirebaseFirestore.instance
        .collection("Data")
        .doc(id)
        .set(datainfoMap);
  }

  Future<Stream<QuerySnapshot>> getData() async {
    return FirebaseFirestore.instance.collection("Data").snapshots();
  }

  Future update(String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("Data")
        .doc(id)
        .update(updateInfo);
  }

  Future delete(
    String id,
  ) async {
    return await FirebaseFirestore.instance.collection("Data").doc(id).delete();
  }
}
