
import 'package:coinbit/generated/l10n.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String? title;
  final String? message;
  final IconData? icon;
  final String? image;
  final Color iconColor;

  NotFoundPage(
      {this.title,
      this.message,
      this.icon = Icons.search,
      this.image,
      this.iconColor = Colors.black});

  Widget bodyData(S appLocale) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 100.0,
              color: iconColor,
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(appLocale.not_found),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    S appLocale = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? appLocale.not_found),
      ),
      body: bodyData(appLocale),
    );
  }
}