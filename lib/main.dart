// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/Form screen/form.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          
          backgroundColor: Color(0xffD78484),

          //use 'LayoutScreen' to view full project with web and mobile screen size
          //use 'FormPage' to view only the formpage
          //...'DesktopPage'
          //...'MobilePage'
          body: FormPage(),
        ),
      ),
    );
  }
}
