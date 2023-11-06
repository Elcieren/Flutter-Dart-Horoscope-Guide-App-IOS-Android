
import 'package:flutter/material.dart';
import 'package:horoscope_guide/burc-listesi.dart';
import 'package:horoscope_guide/burc_detay.dart';
import 'package:horoscope_guide/model/burc.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenrator(RouteSettings settings){
    switch(settings.name){
      case'/':
      return MaterialPageRoute(builder:(context)=>BurcListesi());

      case'/burcDetay':
      final Burc secilen=settings.arguments as Burc;
      return MaterialPageRoute(builder:(context)=>BurcDetay(secilenBurc:secilen ) );
    }
  }
}