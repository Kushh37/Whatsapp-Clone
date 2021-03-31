import 'package:clone_whatsapp/Pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          accentColor: Color(0xff25D336), primaryColor: Color(0xff075E54)),
      home: WhatsAppHome(),
    );
  }
}
