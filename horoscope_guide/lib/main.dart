import 'package:flutter/material.dart';
import 'package:horoscope_guide/burc-listesi.dart';
import 'package:horoscope_guide/route_generator.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primarySwatch: Colors.pink,
       ),
       onGenerateRoute: RouteGenerator.routeGenrator,
    );
  }
}