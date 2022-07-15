// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get locale_str {
    return Intl.message(
      'English',
      name: 'locale_str',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get locale_code {
    return Intl.message(
      'en',
      name: 'locale_code',
      desc: '',
      args: [],
    );
  }

  /// `dd MMMM yyyy`
  String get locale_date_format {
    return Intl.message(
      'dd MMMM yyyy',
      name: 'locale_date_format',
      desc: '',
      args: [],
    );
  }

  /// `Coinbit`
  String get app_name {
    return Intl.message(
      'Coinbit',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Not found.`
  String get not_found {
    return Intl.message(
      'Not found.',
      name: 'not_found',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Session`
  String get session {
    return Intl.message(
      'Session',
      name: 'session',
      desc: '',
      args: [],
    );
  }

  /// `Pairing`
  String get pairing {
    return Intl.message(
      'Pairing',
      name: 'pairing',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Session Detail`
  String get session_detail {
    return Intl.message(
      'Session Detail',
      name: 'session_detail',
      desc: '',
      args: [],
    );
  }

  /// `Expiry`
  String get expired {
    return Intl.message(
      'Expiry',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Last Update`
  String get last_update {
    return Intl.message(
      'Last Update',
      name: 'last_update',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Ping`
  String get ping {
    return Intl.message(
      'Ping',
      name: 'ping',
      desc: '',
      args: [],
    );
  }

  /// `Emit`
  String get emit {
    return Intl.message(
      'Emit',
      name: 'emit',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id', countryCode: 'ID'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
