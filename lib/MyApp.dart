import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'LandingPage.dart';
import 'MyAppState.dart';
import 'package:calendar_view/calendar_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: CalendarControllerProvider(
        controller: EventController(),
        child: MaterialApp(
          title: 'MediHeal',
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: LandingPage(),
        ),
      ),
    );
  }
}