import 'package:flutter/material.dart';
import 'feedback_form_page.dart';

void main() {
  runApp(const FormFeedbackApp());
}

class FormFeedbackApp extends StatelessWidget {
  const FormFeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Feedback App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF795548), // cokelat utama
          primary: const Color(0xFF8D6E63),   // cokelat medium
          secondary: const Color(0xFFD7CCC8), // krem lembut
          background: const Color(0xFFF7EFE5), // latar belakang lembut
          surface: const Color(0xFFFFF3E0), // card warna terang
        ),
        scaffoldBackgroundColor: const Color(0xFFF7EFE5), // warna dasar aplikasi
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF795548),
          foregroundColor: Colors.white,
          elevation: 3,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6D4C41),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const FeedbackFormPage(),
    );
  }
}
