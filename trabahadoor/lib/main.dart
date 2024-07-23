import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabahadoor/screens/employer_side/employer.dart';
import 'package:trabahadoor/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TrabahaDoor',
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(3, 63, 118, 1),
          hintColor: const Color(0x0ffed408),
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: const MainScreenemp());
  }
}
