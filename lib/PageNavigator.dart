import 'package:flutter/material.dart';
import 'package:fyp_project/HomePage.dart';
import 'package:fyp_project/VitalsPage.dart';
import 'package:fyp_project/PillsPage.dart';
import 'package:fyp_project/ChatPage.dart';

class PageNavigator extends StatefulWidget {
  static String patientName = "Candice Ng";

  @override
  State<PageNavigator> createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blueGrey,
        selectedIndex: currentPageIndex,
        backgroundColor: Color(0xFF779FCA),
        destinations: const <Widget> [
          NavigationDestination(icon: Icon(Icons.home_outlined, color: Colors.white,), label: 'Home'), 
          NavigationDestination(icon: Icon(Icons.monitor_heart_outlined, color: Colors.white,), label: 'Vitals'), 
          NavigationDestination(icon: Icon(Icons.medication_outlined, color: Colors.white,), label: 'Pills'), 
          NavigationDestination(icon: Icon(Icons.chat_bubble_outline_rounded, color: Colors.white,), label: 'Chat'), 
        ],
      ),

      body: 
        <Widget> [
          HomePage(), 
          VitalsPage(), 
          PillsPage(), 
          ChatPage(),
        ][currentPageIndex],
    );
  }
}