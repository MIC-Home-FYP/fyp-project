import 'package:flutter/material.dart';
import 'package:fyp_project/PageNavigator.dart';
import 'package:provider/provider.dart';
import 'LandingPage.dart';
import 'MyAppState.dart';
import 'package:calendar_view/calendar_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: CalendarControllerProvider(
        controller: EventController(),
        child: MaterialApp(
          title: 'MediHeal',
          navigatorKey: navigatorKey,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: LandingPage(),
          routes: {
            'chat': (context) {
              return PageNavigator(initialIndex: 3);
            },
          },
        ),
      ),
    );
  }
}