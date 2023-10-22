import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/chat_message.dart';
import 'package:flutter_carrot/pages/chatting/components/chat_container.dart';
import 'package:flutter_carrot/pages/components/appbar_perferred_size.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(
            chatMessage: chatMessageList[index],
          ),
        ),
      ),
    );
  }
}
