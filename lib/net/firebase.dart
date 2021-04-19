import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void>userSetup(String displayName)async{
  CollectionReference users =FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid= auth.currentUser.uid.toString();
  users.add({
    'name':displayName,
    'uid':uid,
  });
  return;
}