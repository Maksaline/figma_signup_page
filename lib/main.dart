import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_ui/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color textDark = Colors.black;
  static const Color textMedium = Colors.black54;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFFD70404),
            onPrimary: Colors.black,
            secondary: Colors.black,
            onSecondary: Color(0xFFF6F6F6),
            error: Color(0xFF797979),
            onError: Colors.black,
            surface: Colors.black,
            onSurface: Color(0xFFF8F7FB)
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.bold),
          displayMedium: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.bold),
          displaySmall: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.bold),
          headlineLarge: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.w600),
          headlineMedium: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.bold),
          headlineSmall: GoogleFonts.poppins(color: textDark),
          titleLarge: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.w600),
          titleMedium: GoogleFonts.poppins(color: textDark),
          titleSmall: GoogleFonts.poppins(color: textDark),
          bodyLarge: GoogleFonts.poppins(color: textDark),
          bodyMedium: GoogleFonts.poppins(color: textMedium),
          bodySmall: GoogleFonts.poppins(color: textMedium),
          labelLarge: GoogleFonts.poppins(color: textDark, fontWeight: FontWeight.w500),
          labelMedium: GoogleFonts.poppins(color: Colors.black54, fontWeight: FontWeight.w500),
          labelSmall: GoogleFonts.poppins(color: textMedium),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
