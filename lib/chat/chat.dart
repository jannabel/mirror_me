import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:talk_to_me/components/chat_bubble.dart';
import 'package:talk_to_me/data/local_messages.dart';
import 'package:talk_to_me/models/message_model.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _messageController = TextEditingController();

  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              messages.length,
              (index) {
                var currentMessage = messages[index];
                if (currentMessage.type == MessageType.received) {
                  return ChatBubble(context: context, message: messages[index]);
                }
                return ChatBubble(context: context, message: messages[index]);
              },
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 238, 239, 248),
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.go('/login'),
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/280x280_RS/90/f3/fe/90f3fef49e2c82bc2f1dd605ae03d2d7.jpg'),
          ),
          title: Text('Mi Padrino 🧠'),
          subtitle: Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.green,
                size: 10,
              ),
              SizedBox(
                width: 7,
              ),
              Text('Online'),
            ],
          ),
        ),
        actions: const [
          InkWell(
            child: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 11),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.76,
              child: TextFormField(
                controller: _messageController,
                onFieldSubmitted: (value) {
                  setState(() {
                    var index = messages.length;
                    var newMessage = Message(
                        message: _messageController.value.text,
                        date: DateFormat.Hm('es_MX').format(DateTime.now()),
                        type: MessageType.sent);
                    messages.add(newMessage);
                    _messageController.clear();
                    messages.add(receivedMessages[index]);
                  });
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 238, 239, 248),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  hintText: 'Escribir pensamiento...',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    var index = messages.length;
                    var newMessage = Message(
                        message: _messageController.value.text,
                        date: DateFormat.Hm('es_MX').format(DateTime.now()),
                        type: MessageType.sent);
                    messages.add(newMessage);
                    _messageController.clear();

                    messages.add(receivedMessages[index]);
                  });
                },
                icon: const Icon(Icons.send),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 238, 82, 82),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
