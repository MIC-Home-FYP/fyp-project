import 'package:flutter/material.dart';

class VitalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Vitals_Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 75),
              child: Center(
                child: Text(
                  'My Vital Signs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6290C3), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.monitor_heart, color: Colors.white, size: 30,),
                                  SizedBox(width: 10),
                                  Text(
                                    'Heart Rate',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'View history',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '73 bpm',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 25,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Below average',
                                  style: TextStyle(
                                  color: Color(0xFFFFFCFC),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6290C3), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.thermostat_sharp, color: Colors.white, size: 30,),
                                  SizedBox(width: 10),
                                  Text(
                                    'Temperature',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'View history',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '36 °C',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 25,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Good',
                                  style: TextStyle(
                                  color: Color(0xFFFFFCFC),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6290C3), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.bloodtype_sharp, color: Colors.white, size: 30,),
                                  SizedBox(width: 10),
                                  Text(
                                    'Blood Pressure',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'View history',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '118/76 mmHg',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 25,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Above average',
                                  style: TextStyle(
                                  color: Color(0xFFFFFCFC),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6290C3), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.bloodtype_sharp, color: Colors.white, size: 30,),
                                  SizedBox(width: 10),
                                  Text(
                                    'Blood Glucose',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'View history',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '8.7mmol/L',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 25,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Above average',
                                  style: TextStyle(
                                  color: Color(0xFFFFFCFC),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6290C3), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.air_sharp, color: Colors.white, size: 30,),
                                  SizedBox(width: 10),
                                  Text(
                                    'Oxygen Level',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'View history',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '98.20 %',
                                    style: TextStyle(
                                    color: Color(0xFFFFFCFC),
                                    fontSize: 25,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Good',
                                  style: TextStyle(
                                  color: Color(0xFFFFFCFC),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}