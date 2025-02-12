import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:crypto/crypto.dart';
import 'dart:convert';

class PatientSignup extends StatelessWidget {
  const PatientSignup({super.key});
  static String patientId = "";
  static String username = "";
  static String passwordHash = "";
  static String confirmPasswordHash = "";

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
              Text("Sign up", 
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 42, 
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 150), 
              Container(
                width: 340,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text("Patient ID", 
                        style: GoogleFonts.nunito(
                          color: Colors.white, 
                          fontSize: 21,
                          fontWeight: FontWeight.w300, 
                        ),
                      ),
                    ),
                    TextField(
                      onSubmitted: (String value) {
                        username = value;
                      },
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        hintText: "Type here...",
                        hintStyle: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text("Password", 
                        style: GoogleFonts.nunito(
                          color: Colors.white, 
                          fontSize: 21,
                          fontWeight: FontWeight.w300, 
                        ),
                      ),
                    ),
                    TextField(
                      onSubmitted: (String value) {
                        passwordHash = sha256.convert(utf8.encode(value)).toString();
                      },
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        hintText: "Type here...",
                        hintStyle: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text("Confirm Password", 
                        style: GoogleFonts.nunito(
                          color: Colors.white, 
                          fontSize: 21,
                          fontWeight: FontWeight.w300, 
                        ),
                      ),
                    ),
                    TextField(
                      onSubmitted: (String value) {
                        confirmPasswordHash = sha256.convert(utf8.encode(value)).toString();
                      },
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        hintText: "Type here...",
                        hintStyle: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text("Patient ID", 
                        style: GoogleFonts.nunito(
                          color: Colors.white, 
                          fontSize: 21,
                          fontWeight: FontWeight.w300, 
                        ),
                      ),
                    ),
                    TextField(
                      onSubmitted: (String value) {
                        username = value;
                      },
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        hintText: "Type here...",
                        hintStyle: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
              padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(username);
                    print(passwordHash);
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
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}