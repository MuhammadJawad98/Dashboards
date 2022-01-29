import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore{
  // Create a CollectionReference called users that references the firestore collection
  static var users = FirebaseFirestore.instance;
  static Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users.collection('users')
        .add({
      'full_name': 'Muhammad Jawad', // John Doe
      'company': 'Softech', // Stokes and Sons
      'age': '25' // 42
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  static Future<void> getUsers() {
    // Call the user's CollectionReference to add a new user
    return users.collection('users').doc('167FMXtPrlu0eA9dHCoW').get()
        .then((value) => print('firstore data: ${value.data()}'))
        .catchError((error) => print("Failed to get user: $error"));
  }
}