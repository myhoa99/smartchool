import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartschool/app/routes/app_pages.dart';
import 'package:smartschool/theme/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      title: 'SmartSchool',
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        dividerColor: Colors.transparent,
        shadowColor: Colors.transparent,
        appBarTheme: AppBarTheme(elevation: 0),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
