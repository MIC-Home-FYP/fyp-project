import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyHomePage.dart';

class NurseLogin extends StatelessWidget {
  const NurseLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login: Nurse"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                }, 
              child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}