import 'package:englishapp/pages/started_tips/started_tips.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App English',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFECE8)),
        useMaterial3: true,
      ),
      home: const StartedTips(title: ''),
    );
  }
}
