import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'LandingPage.dart';
import 'MyAppState.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'MediHeal',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Color(0xFF6290C3),
        ),
        home: LandingPage(),
      ),
    );
  }
}