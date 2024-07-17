import 'package:intl/intl.dart';
import 'package:talk_to_me/models/message_model.dart';

//ESTOS SON LOS MENSAJES DE LA IA
//SIEMPRE DEJA UN MENSAJE ADICIONAL AL FINAL PORQUE EPLOTA :)
List<Message> receivedMessages = [
  Message(
      message: '¡Hola! ¿Cómo estás?',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message: 'Claro, dime cuál es el problema y veré cómo puedo ayudarte.',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message:
          'Lamento escuchar eso. Las situaciones familiares pueden ser muy difíciles y afectar muchos aspectos de nuestra vida. ¿Hay algo específico en lo que te gustaría ayuda o algún consejo que necesites?',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message:
          'Por supuesto, aquí estoy para escucharte. Cuéntame más sobre lo que estás pasando.',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message: 'NO ME IMPORTA 🐀',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
];
