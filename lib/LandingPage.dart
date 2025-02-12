import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyAppState.dart';
import 'PatientSignup.dart';
import 'PatientLogin.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/Logo.png'),
              width: 195,
              height: 195,
            ), 
            SizedBox(
              height: 30,
            ), 
            Text('MediHeal',
            style: GoogleFonts.nunito(
              color: Colors.white, 
              fontSize: 28,
              fontWeight: FontWeight.w700,
              ), 
            textAlign: TextAlign.center,
            ),
            Text('recovery made simpler!', 
              style: GoogleFonts.nunito(
                color: Colors.white, 
                fontSize: 24, 
                fontWeight: FontWeight.w200,
              ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 140
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const PatientLogin()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF0F7EE),
                  fixedSize: Size.fromWidth(180),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 13, top: 13),
                  child: Text('Log In', 
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(5),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => PatientSignup()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF0F7EE),
                  fixedSize: Size.fromWidth(180),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 13, top: 13),
                  child: Text('Sign Up', 
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}