import 'package:flutter/material.dart';
import 'package:fyp_project/ChatPage.dart';
import 'package:fyp_project/PageNavigator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  static String patientName = 'Candice Ng';
  static int heartRate = 73;
  static double temperature = 36.0;
  static int sysBP = 118;
  static int diasBP = 76;
  static double bloodGlucose = 8.7;
  static double o2Level = 98.2;
  static bool isSelectedPills = false;
  static bool isSelectedVitals = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Home_Background.png'), 
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Template_Profile_Pic.png'),
                          ),
                        ),
                      ),
                    ),
                    Text('Hi, $patientName', 
                      style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 80),
                    GestureDetector(
                      onTap: () => {
                        print('emergency button pressed')
                      },
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Color(0xFFD9D9D9),
                        ),
                        child: Icon(Icons.add_call, color: Color(0xFFFA0D11),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 370,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle, 
                        color: Color(0x7FD9D9D9),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 14),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Robot_Icon.png',
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(width: 5),
                                Text('Your reminders for today', 
                                  style: GoogleFonts.nunito(
                                    fontSize: 24,
                                    color: Color(0xFF2F3061),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 11),
                                GestureDetector(
                                  onTap: () => {
                                    //TODO: find a way to switch pages without removing the nav bar
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(0.699999988079071)
                                    ),
                                    child: Icon(Icons.call_made_sharp, color: Color(0xFF2F3061),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF0F7EE),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6290C3),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Icon(Icons.medication_outlined, 
                                        color: Color(0xFF2F3061),
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 220,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Pills',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFF2F3061),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text('Ibuprofen Before Breakfast 08:00',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFF2F3061),
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                    value: isSelectedPills, 
                                    onChanged: (value) {
                                      isSelectedPills = value!;
                                    }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF0F7EE),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6290C3),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Icon(Icons.monitor_heart_outlined, 
                                        color: Color(0xFF2F3061),
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 220,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Vitals Measurement',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFF2F3061),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text('Upload temperature 09:00',
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFF2F3061),
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                    value: isSelectedVitals, 
                                    onChanged: (value) {
                                      isSelectedVitals = value!;
                                    }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 9),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      width: 370,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('My Vital Signs', 
                            style: GoogleFonts.nunito(
                              color: Color(0xFF2F3061),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text('Last Measured at: 27-Nov-2024 22:30', 
                            style: GoogleFonts.nunito(
                              color: Color(0xFF6290C3),
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: Container(
                                    width: 105,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF779FCA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.monitor_heart, color: Colors.white, size: 20,),
                                          SizedBox(height: 10,),
                                          Text('Heart Rate', 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '$heartRate bpm',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Below average',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: Container(
                                    width: 105,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF779FCA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.device_thermostat, color: Colors.white, size: 20,),
                                          SizedBox(height: 10,),
                                          Text('Temperature', 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '$temperature °C',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Good',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: Container(
                                    width: 105,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF779FCA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.device_thermostat, color: Colors.white, size: 20,),
                                          SizedBox(height: 10,),
                                          Text('Blood Pressure', 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '$sysBP/$diasBP mmHg',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Above average',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: Container(
                                    width: 105,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF779FCA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.device_thermostat, color: Colors.white, size: 20,),
                                          SizedBox(height: 10,),
                                          Text('Blood Glucose', 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '$bloodGlucose mmol/L',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Above average',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                                  child: Container(
                                    width: 105,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF779FCA),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.device_thermostat, color: Colors.white, size: 20,),
                                          SizedBox(height: 10,),
                                          Text('Oxygen Level', 
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '$o2Level %',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Good',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 106,
                      width: 328,
                      child: Column(
                        children: [
                          Text('My Appointments'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}