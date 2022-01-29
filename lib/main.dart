import 'package:dashboards/responsive.dart';
import 'package:dashboards/views/content_view.dart';
import 'package:dashboards/views/custom_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': 'Muhammad Jawad', // John Doe
            'company': 'Softech', // Stokes and Sons
            'age': '24' // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    addUser();
    return Scaffold(
      body: Responsive(
        mobile: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amberAccent,
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amberAccent,
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                // color: Colors.blue,
                child: const CustomDrawer(),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: ContentView()),
            )
          ],
        ),
      ),
    );
  }
}
