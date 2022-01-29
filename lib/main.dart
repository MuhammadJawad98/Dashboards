import 'package:dashboards/responsive.dart';
import 'package:dashboards/services/firestore_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../views/content_view.dart';
import '../views/custom_drawer.dart';

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
      // title: 'Flutter Dashboard',
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
    FireStore.getUsers();
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
