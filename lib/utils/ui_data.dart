import 'dart:ui';
import 'package:flutter/material.dart';

class Configs{
  static const String appName = 'Coinbit'; //.arb juga diganti
  static const String companyName = 'Bibit'; //.arb juga diganti

  static const String dbName = 'coinbit';
  static const String dbPass = 'mypass123';
  static const int dbVersion = 1;
}
class Fonts {
  const Fonts();

  static const String nunito = "Nunito";
  static const String montserrat = "Montserrat";
  static const String rubik = "Rubik";
  static const String roboto = "Roboto";
}

class AppColors {
  AppColors._();

  static const Color? primary = Color(0xFF3FC785);
  static final Color? primaryDark = Colors.green[700];
  static final Color? primaryLight = Colors.green[300];
  static const Color? accent = Colors.orangeAccent;
}