import 'package:flutter/material.dart';

class VitalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF6290C3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'My Vital Summary',
                    style: TextStyle(
                      color: Color(0xFFFFFCFC),
                      fontSize: 30,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x1A779FCA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monitor_heart,
                                      color: Color(0xFF2F3061),
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Heart Rate',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'View history',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Icon(Icons.play_arrow,
                                        color: Color(0xFF2F3061), size: 20),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '73 bpm',
                                        style: TextStyle(
                                          color: Color(0xFF2F3061),
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Below average',
                                        style: TextStyle(
                                          color: Color(0xFFFA0D11),
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Last Measured at: 27/11/2024 22 30',
                                        style: TextStyle(
                                          color: const Color(0x992F3061),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x1A779FCA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.thermostat_sharp,
                                      color: Color(0xFF2F3061),
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Temperature',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
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
                                        color: Color(0xFF2F3061),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Icon(Icons.play_arrow,
                                        color: Color(0xFF2F3061), size: 20),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '36 °C',
                                        style: TextStyle(
                                          color: Color(0xFF2F3061),
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Normal',
                                        style: TextStyle(
                                          color: Color(0xFF14B860),
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Last Measured at: 27/11/2024 21 57',
                                        style: TextStyle(
                                          color: const Color(0x992F3061),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x1A779FCA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bloodtype_sharp,
                                      color: Color(0xFF2F3061),
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Blood Pressure',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
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
                                        color: Color(0xFF2F3061),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Icon(Icons.play_arrow,
                                        color: Color(0xFF2F3061), size: 20),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '130/85 mmHg',
                                        style: TextStyle(
                                          color: Color(0xFF2F3061),
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Above average',
                                        style: TextStyle(
                                          color: const Color(0xFFFA0D11),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Last Measured at: 27/11/2024 22 35',
                                        style: TextStyle(
                                          color: const Color(0x992F3061),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x1A779FCA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bloodtype_sharp,
                                      color: Color(0xFF2F3061),
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Blood Glucose',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
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
                                        color: Color(0xFF2F3061),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Icon(Icons.play_arrow,
                                        color: Color(0xFF2F3061), size: 20),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5.4 mmol/L',
                                        style: TextStyle(
                                          color: Color(0xFF2F3061),
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Normal',
                                        style: TextStyle(
                                          color: const Color(0xFF14B860),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Last Measured at: 27/11/2024 21 43',
                                        style: TextStyle(
                                          color: const Color(0x992F3061),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x1A779FCA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.air_sharp,
                                      color: Color(0xFF2F3061),
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Oxygen Level',
                                      style: TextStyle(
                                        color: Color(0xFF2F3061),
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
                                        color: Color(0xFF2F3061),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Icon(Icons.play_arrow,
                                        color: Color(0xFF2F3061), size: 20),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '94.50 %',
                                        style: TextStyle(
                                          color: Color(0xFF2F3061),
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Below average',
                                        style: TextStyle(
                                          color: const Color(0xFFFA0D11),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Last Measured at: 27/11/2024 22 40',
                                        style: TextStyle(
                                          color: const Color(0x992F3061),
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
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
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
