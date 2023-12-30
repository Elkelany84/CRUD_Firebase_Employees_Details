import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  //Add to FirebaseFirestore
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }

  //Read and Get Data from FirebaseFirestore
  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }
}
