import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Chat_Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              color: Color(0xFFD9D9D9),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 13),
                child: Row(
                  children: [
                    Image.asset('assets/images/Robot_Icon.png', width: 35, height: 35,),
                    SizedBox(width: 280),
                    Icon(Icons.history_sharp, size: 35, color: Color(0xFF2F3061),),
                    Icon(Icons.bookmark_add_outlined, size: 35, color: Color(0xFF2F3061),),
                  ],
                ),
              )
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF0F7EE),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Icon(Icons.add, color: Color(0xFF2F3061), size: 35,),
                    ),
                    Expanded(
                      child: TextField(
                        onSubmitted: (value) {
                          handleInput(value);
                        },
                        style: TextStyle(
                            color: Color(0xFF2F3061),
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        decoration: InputDecoration(
                          hintText: 'How can I help you today?',
                          hintStyle: TextStyle(
                            color: Color(0xFF2F3061),
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8), 
                      child: Icon(Icons.mic, color: Color(0xFF2F3061), size: 28,),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // TODO implement function for sending input
  void handleInput(String value) {
    print(value);
  }
}