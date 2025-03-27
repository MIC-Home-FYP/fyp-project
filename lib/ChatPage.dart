import 'package:flutter/material.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:fyp_project/main.dart';

import 'dart:convert';
import 'dart:math';

import 'package:fyp_project/utilities/Request.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  static List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  @override
  void initState() {
    super.initState();
    // Listen to the shared stream.
    if (messageStreamController != null) {
      print("Listening to message stream");
      messageStreamController.stream.listen((message) {
        // Assuming the notification payload contains a key "customData"
        final data = message.data['query'];
        if (data != null) {
          print("Sending message to chatbot");
          Request request = Request({'query': data}, 'new');
          request.sendPostRequest().then((response) {
            final chatbotResponse = types.TextMessage(
                author: types.User(id: 'chatbot'),
                id: randomString(),
                text: response.getResponseContent('response'));
            setState(() {
              _messages.insert(0, chatbotResponse);
            });
          });
        }
      });
    }
  }

  String randomString() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64UrlEncode(values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Chat_Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        child: Column(
          children: [
            Container(
                height: 80,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 13),
                  child: Row(
                    children: [
                      Text(
                        'Chat with MediHeal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.history_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.bookmark_add_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: Chat(
                messages: _messages,
                onSendPressed: _handleSendPressed,
                user: _user,
                theme: DefaultChatTheme(
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });

    Request request = Request({'query': message.text}, 'new');
    request.sendPostRequest().then((response) {
      final chatbotResponse = types.TextMessage(
          author: types.User(id: 'chatbot'),
          id: randomString(),
          text: response.getResponseContent('response'));
      setState(() {
        _messages.insert(0, chatbotResponse);
      });
    });
  }
}
