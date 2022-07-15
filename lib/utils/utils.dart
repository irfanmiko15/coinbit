
import 'dart:convert';
import 'dart:math';

import 'package:coinbit/l10n/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Utils {
//  static Utils instance = Utils();

  static void init(Locale appLocale) {
    if (appLocale != null) {
      _decimalFormat = NumberFormat("#,##0", Lang.validLocale(appLocale));
    }
  }

  

  static NumberFormat _decimalFormat = NumberFormat("#,##0", "id_ID");
  static final NumberFormat _decimalCommaFormat =
      NumberFormat("#.##0", "id_ID");

  static final RegExp _removeTrailingZerosRegex = RegExp(r"([.]*0)(?!.*\d)");

//  static NumberFormat _decimalCommaFormat = NumberFormat("#,##0.00", "id_ID");

  static final DateFormat _dateFormat = DateFormat('dd MMM yyyy', "id_ID");
  static final DateFormat _dateTimeFormat =
      DateFormat('dd MMM yyyy - HH:mm', "id_ID");

  // static const MethodChannel platform = MethodChannel('flutter.native/helper');

  // static Future<String> updateImageGallery(String filePath) async {
  //   var response = "";
  //   try {
  //     final result = await platform
  //         .invokeMethod('updateImageGallery', {"filePath": filePath});
  //     response = result;
  //   } on PlatformException catch (e) {
  //     response = "Failed to Invoke: '${e.message}'.";
  //   }

  //   return response;
  // }

  static void addAfterBuildCallback(VoidCallback afterLayout) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => afterLayout());
  }

//  static String cdnToAssetsUrl(String oldUrl) {
//    return oldUrl?.replaceAll(BaseApi.CDN_URL, BaseApi.ASSETS_URL);
//  }

  static String? listToStringQuery(List<String> input) {
    if (input == null || input.isEmpty) return null;

    var temp = "";
    for (var s in input) {
      temp += s + ",";
    }

    return temp.substring(0, temp.length - 1);
  }

  static String doubleToDecimal(double value) {
//    String temp = removeDecimalZeroFormat(value);
//    temp = _decimalCommaFormat.format(double.parse(temp));
    var temp = _decimalFormat.format(value);
//    return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 2);
    return temp;
  }

  static String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  static String intToDecimal(int value, {bool useComma = false}) {
    if (useComma) {
      return _decimalCommaFormat.format(value);
    }
    return _decimalFormat.format(value);
  }

//  static String dateToFormat({
//    @required DateTime date,
//    @required String format,
//    bool useLocalTime = true,
//  }) {
//    assert(date != null);
//    assert(format != null);
//    DateFormat df = DateFormat(format ?? "");
//    return df.format(useLocalTime ? date.toLocal() : date);
//  }

  static String toDate(
    DateTime date, {
    bool useLocalTime = true,
    String? format,
    String? locale,
  }) {
    assert(useLocalTime != null);
    if (date == null) return "";
    return (format == null ? _dateFormat : DateFormat(format, locale))
        .format(useLocalTime ? date.toLocal() : date);
  }

  static String toDateTime(
    DateTime date, {
    String? emptyVal,
    bool showTimeZone = false,
    bool useLocalTime = true,
  }) {
    assert(showTimeZone != null);
    assert(useLocalTime != null);
    final locDate = useLocalTime ? date.toLocal() : date;
    if (date == null || date.millisecondsSinceEpoch <= 0) return emptyVal ?? "";
    return _dateTimeFormat.format(locDate) +
        (showTimeZone ? " " + locDate.timeZoneName : "");
  }

  static String toBase64(String str) {
    var bytes = utf8.encode(str);
    var base64Str = base64.encode(bytes);
    return base64Str;
  }

  static DateTime? dateTimeNotNull(String dateTime) {
    if (dateTime == null) return null;
    return DateTime.parse(dateTime);
  }

  static T between<T extends num>(T current, low, high) {
    if (min<T>(high, current) == high) return high;

    if (max<T>(low, current) == low) return low;

    return current;
  }

  static String? stringPhoneFormat({
    @required String? phoneCode,
    @required String? plainPhone,
  }) {
    assert(phoneCode != null);
    assert(plainPhone != null);

    var splits = plainPhone?.split(phoneCode!);

    if (splits!.length != 2) {
      return plainPhone;
    }

    var phoneOnly = splits[1];
    var newTextLength = phoneOnly.length;
    var usedSubstringIndex = 0;

    final newText = StringBuffer();
    if (newTextLength >= 4) {
      newText.write(phoneOnly.substring(0, usedSubstringIndex = 3) + '-');
    }
    if (newTextLength >= 8) {
      newText.write(phoneOnly.substring(3, usedSubstringIndex = 7) + '-');
    }
    // Dump the rest.
    if (newTextLength >= usedSubstringIndex) {
      newText.write(phoneOnly.substring(usedSubstringIndex));
    }

    return "+" + phoneCode! + " " + newText.toString();
  }

  static double? dynamicToDouble(dynamic value) {
    if (value is double) {
      return value;
    }
    if (value is int) {
      return value.toDouble();
    }
    return null;
  }

  static String getAliasAvatarImage({int size = 256, @required String? name}) {
    final uri = Uri.https('ui-avatars.com', '/api', {
      "size": size.toString(),
      "name": name,
    });
    return uri.toString();
  }

  

  static String doubleToStringDecimal({
    @required double? value,
    int precision = 2,
    bool useCommaAsDecimal = true,
  }) {
    var n = ((value! * 100).roundToDouble()) /
        100; //double.parse(value.toStringAsFixed(precision));
    var temp = n.toString().replaceAll(_removeTrailingZerosRegex, "");
//    removeDecimalZeroFormat(n); //n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
    var listTemp = temp.split(".");
    if (listTemp == null) return "";
    if (listTemp.length == 2) {
      temp =
          "${intToDecimal(int.parse(listTemp[0]))}${useCommaAsDecimal ? "," : "."}${listTemp[1]}";
    } else if (listTemp.length == 1) {
      temp = intToDecimal(int.parse(listTemp[0]));
    }
//    if (useCommaAsDecimal) return temp.replaceAll(".", ",");
    return temp;
  }

  static List<String> distinctList(List<String> old) => old.toSet().toList();

  static int? dynamicToInt(dynamic value) {
    if (value == null) return value;
    if (value is int) return value;
    if (value is String) return int.parse(value);
    return null;
  }

  static DateTime? dynamicToDateTime(dynamic value) {
    if (value == null) return null;
    if (value is String) {
      if (value.isEmpty) return null;
      if (value == "0000-00-00 00:00:00") return null;
    }
    return DateTime.parse(value);
  }


}