import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientLogin extends StatelessWidget {
  const PatientLogin({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Login_Background.png'), 
            fit: BoxFit.cover,
            ),
        ), 
        child: Center(
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
              SizedBox(height: 130),
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
                      decoration: InputDecoration(
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        labelText: "Type here...",
                        labelStyle: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
                      decoration: InputDecoration(
                        filled: true, 
                        fillColor: Color.fromARGB(51, 0xF0, 0xF7, 0xEE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ), 
                        labelText: "Type here...",
                        labelStyle: GoogleFonts.nunito(
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
              SizedBox(height: 50),
              Padding(
              padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}