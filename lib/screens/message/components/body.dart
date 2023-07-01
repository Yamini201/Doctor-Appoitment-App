import 'package:flutter/material.dart';
import 'package:healthcare/models/ChatMessage.dart';
import 'package:healthcare/screens/chats/components/chat_input_field.dart';
import 'package:healthcare/widgets/constants.dart';

import '../../chats/components/message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
