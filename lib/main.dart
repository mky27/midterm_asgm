import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarterIt',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context)
              .textTheme,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}