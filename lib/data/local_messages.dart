import 'package:intl/intl.dart';
import 'package:talk_to_me/models/message_model.dart';

//ESTOS SON LOS MENSAJES DE LA IA
//SIEMPRE DEJA UN MENSAJE ADICIONAL AL FINAL PORQUE EPLOTA :)
List<Message> messages = [
  Message(
      message:
          'Buenas tardes. Para comenzar, piensa en un recuerdo reciente que te haya dejado una impresión fuerte. Por favor, descríbeme ese recuerdo y qué sensaciones experimentas al pensar en él.',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message: 'Recuerdo un fin de semana que fui a la playa.',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.sent),
  Message(
      message:
          'Perfecto. Ahora vamos a descomponer esta experiencia en sus componentes más simples para entender mejor tu recuerdo. Sensación física: ¿Qué sensaciones físicas específicas experimentaste durante ese fin de semana en la playa?',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message: 'El sol, la arena, el agua tibia, alegría',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.sent),
  Message(
      message:
          'Excelente. Vamos a analizar cada uno de estos elementos: El sol: ¿Cómo describirías la sensación del sol en tu piel durante ese fin de semana en la playa?',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
  Message(
      message: 'Cálido y reconfortante',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.sent),
  Message(
      message:
          'Entiendo. Ahora vamos al siguiente elemento: La arena: ¿Qué sensaciones experimentaste al caminar sobre la arena durante ese fin de semana en la playa?',
      date: DateFormat.Hm('es_MX').format(DateTime.now()),
      type: MessageType.received),
];
