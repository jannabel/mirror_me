import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talk_to_me/components/theme.dart';
import 'package:talk_to_me/models/message_model.dart';

Widget ChatBubble({
  required BuildContext context,
  required Message message,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Row(
      mainAxisAlignment: message.type == MessageType.sent
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(11.0),
          decoration: BoxDecoration(
            color: message.type == MessageType.received
                ? Colors.white
                : primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
              bottomRight: message.type == MessageType.received
                  ? const Radius.circular(20)
                  : const Radius.circular(0),
              bottomLeft: message.type == MessageType.received
                  ? const Radius.circular(0)
                  : const Radius.circular(20),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.7,
          constraints: const BoxConstraints(minHeight: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.message,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: message.type == MessageType.sent
                        ? Colors.white
                        : Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    message.date.toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
