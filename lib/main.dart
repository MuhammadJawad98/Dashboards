import 'package:dashboards/responsive.dart';
import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/views/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
                child: CustomDrawer(),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(children: [
                  Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            color: AppColors.blueColor,
                          )),
                      Expanded(
                          flex: 7,
                          child: Container(
                            color: AppColors.redAccentColor,
                          )),
                    ],
                  ),
                ]),
              ),

            )
          ],
        ),
      ),
    );
  }
}
