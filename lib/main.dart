import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman/mainpage.dart';
import 'package:flutter_application_1/halaman/pageolahraga.dart';
import 'package:flutter_application_1/halaman/pageotomotif.dart';
import 'package:flutter_application_1/halaman/pageprofil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => MainPage(),
      '/SportPage': (context) => HalamanOlahraga(),
      '/AutomotivePage': (context) => HalamanOtomotif(),
      '/ProfilePage': (context) => HalamanProfil(),
    });
  }
}
