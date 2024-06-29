import 'package:flutter/material.dart';
import 'package:guarda_notas/features/keep_notes/presentation/pages/keep_notes_page.dart';
import 'package:guarda_notas/resources/design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: AppThemes.lightTheme,
      home: const KeepNotesPage(),
    );
  }
}
