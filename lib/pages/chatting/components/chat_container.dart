import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/chat_message.dart';
import 'package:flutter_carrot/pages/components/image_container.dart';
import 'package:flutter_carrot/theme.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatContainer({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ImageContainer(
              width: 50,
              height: 50,
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: chatMessage.sender,
                          style: textTheme().bodyLarge),
                      TextSpan(text: chatMessage.location),
                      TextSpan(text: " • ${chatMessage.sendDate}"),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 8,
                    imageUrl: chatMessage.imageUri ?? "",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
