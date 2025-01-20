import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:agendamento/views/telaLogin.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
     localizationsDelegates: [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
   ],
   supportedLocales: [
    Locale("pt"),
   ],
    home: TelaLogin(),
    debugShowCheckedModeBanner: false,
  ));
}
