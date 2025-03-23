import 'package:flutter/material.dart';
import 'package:qianyanji/global/global_colors.dart';
import 'package:qianyanji/view/view_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: GlobalColors.a),
      ),
      initialRoute: '/home',
      routes: {'/home': (context) => ViewApp()},
    );
  }
}
