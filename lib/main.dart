import 'dart:async';

import 'package:coinbit/app.dart';
import 'package:coinbit/utils/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  HttpOverrides.global = GlobalHttpOverrides();

  ErrorWidget.builder = (details) => Container();

  // await Firebase.initializeApp();

  assert(() {
    ErrorWidget.builder =
        (details) => ErrorWidget(details.exception);
    // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    return true;
  }());
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  setupLocator();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runZoned(
        () => runApp(App()),
    // onError: FirebaseCrashlytics.instance.recordError,
  );
}