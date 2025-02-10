import 'package:flutter/material.dart';

class PatientSignup extends StatelessWidget {
  const PatientSignup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Signup_Background.png'), 
            fit: BoxFit.cover,
            ),
        ),
        child: Center(
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
      ),
    );
  }
}