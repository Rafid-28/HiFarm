import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_farm/login/sign_in.dart';
import 'package:hi_farm/login/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HiFarm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const SignInThree(),
    );
  }
}
