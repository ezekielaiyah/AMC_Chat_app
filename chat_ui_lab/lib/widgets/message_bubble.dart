import 'dart:math';

import 'package:flutter/material.dart';
import '/models/chat_message.dart';

class MessageBubble extends StatelessWidget {

  final ChatMessage message;

  const MessageBubble({Key? key, required this.message}) : super(key : key);

@override
  Widget build(BuildContext context) {
  return Align(
    alignment: message.isUserMessage
        ? Alignment.centerRight
        : Alignment.centerLeft,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: message.isUserMessage
            ? Colors.pink[100]
            : Colors.pink[200],
        borderRadius: BorderRadius.circular(180),
      ),
      child: Text(message.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'Times New Roman', color: Colors.pink[700]),
    ),
    ),
  );
  }
}