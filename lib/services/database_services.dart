import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final String? uid;

  DatabaseServices({this.uid});

  // reference for our collections
  final CollectionReference usersCollections =
      FirebaseFirestore.instance.collection("users");
  final CollectionReference groupCollections =
      FirebaseFirestore.instance.collection("groups");

  // saving the userdata
  Future savingUserData(String fullName, String email) async {
    return await usersCollections.doc(uid).set({
      "fullName": fullName,
      "email": email,
      "groups": [],
      "profilePic": "",
      "uid": uid,
    });
  }

  // getting the userdata
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
        await usersCollections.where('email', isEqualTo: email).get();
    return snapshot;
  }
}
