enum MessageType {
  sent,
  received,
}

class Message {
  String message;
  String date;
  MessageType type;

  Message({
    required this.message,
    required this.date,
    required this.type,
  });
}
