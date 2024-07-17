import 'package:flutter/material.dart';
import 'package:talk_to_me/router/router.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es_MX');
    return MaterialApp.router(
      routerConfig: mainRouter,
      debugShowCheckedModeBanner: false,
      title: 'Mirror Me',
    );
  }
}
