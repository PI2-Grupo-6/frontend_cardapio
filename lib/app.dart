import 'package:flutter/material.dart';
import 'package:food_app/screens/initialPage.dart';
import 'package:food_app/screens/menu.dart';
import 'package:food_app/screens/orderConfirm.dart';

import 'utils/constants.dart';
import 'utils/cut_corners_border.dart';

class RapidaoApp extends StatefulWidget {
  @override
  _RapidaoAppState createState() => _RapidaoAppState();
}

class _RapidaoAppState extends State<RapidaoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapidao',
      home: InitialPage(),
      initialRoute: '/',
      routes: {
        '/menu': (BuildContext context) => MenuPage(),
        '/orderConfirm': (BuildContext context) => OrderConfirmPage()
      },
      theme: _kRapidaoTheme,
    );
  }
}

final ThemeData _kRapidaoTheme = _buildRapidaoTheme();

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: kRapidaoBrown900);
}

ThemeData _buildRapidaoTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kSecondaryColor,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kRapidaoBackgroundWhite,
    cardColor: kRapidaoBackgroundWhite,
    errorColor: kRapidaoErrorRed,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        onPrimary: kSecondaryColor,
      ),
    ),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kPrimaryColor,
      colorScheme: base.colorScheme.copyWith(
        secondary: kSecondaryColor,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: base.iconTheme.copyWith(color: kRapidaoBrown900),
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(),
    ),
    textTheme: _buildRapidaoTextTheme(base.textTheme),
    primaryTextTheme: _buildRapidaoTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildRapidaoTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

TextTheme _buildRapidaoTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Roboto',
        displayColor: kRapidaoBrown900,
        bodyColor: kRapidaoBrown900,
      );
}
