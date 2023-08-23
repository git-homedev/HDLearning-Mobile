import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme.instance() {
    _instance = this;
  }

  factory AppTheme() => _instance ?? AppTheme.instance();

  //App Colors
  //Primary Color
  static const Color primaryColor_100 = Color(0xFFCDF4FB);
  static const Color primaryColor_200 = Color(0xFF9CE3F9);
  static const Color primaryColor_300 = Color(0xFF68C4E9);
  static const Color primaryColor_400 = Color(0xFF42A2D5);
  static const Color primaryColor_500 = Color(0xFF0F75BD);
  static const Color primaryColor_600 = Color(0xFF0B5BA2);
  static const Color primaryColor_700 = Color(0xFF074487);
  static const Color primaryColor_800 = Color(0xFF04306D);
  static const Color primaryColor_900 = Color(0xFF032258);
  //Secondary Color
  static const Color successColor_100 = Color(0xFFe7f9d1);
  static const Color successColor_200 = Color(0xFFcbf4a5);
  static const Color successColor_300 = Color(0xFF9fde73);
  static const Color successColor_400 = Color(0xFF71be4a);
  static const Color successColor_500 = Color(0xFF3e931e);
  static const Color successColor_600 = Color(0xFF2b7e16);
  static const Color successColor_700 = Color(0xFF1a690e);
  static const Color successColor_800 = Color(0xFF0e5509);
  static const Color successColor_900 = Color(0xFF054604);
  static const Color infoColor_100 = Color(0xFFcbf4fc);
  static const Color infoColor_200 = Color(0xFF97e5fb);
  static const Color infoColor_300 = Color(0xFF60ccf3);
  static const Color infoColor_400 = Color(0xFF3aaeeb);
  static const Color infoColor_500 = Color(0xFF0085dc);
  static const Color infoColor_600 = Color(0xFF0067be);
  static const Color infoColor_700 = Color(0xFF004d9f);
  static const Color infoColor_800 = Color(0xFF003680);
  static const Color infoColor_900 = Color(0xFF002668);
  static const Color warningColor_100 = Color(0xFFfff1cc);
  static const Color warningColor_200 = Color(0xFFffde9b);
  static const Color warningColor_300 = Color(0xFFfcc767);
  static const Color warningColor_400 = Color(0xFFf9b041);
  static const Color warningColor_500 = Color(0xFFf68a04);
  static const Color warningColor_600 = Color(0xFFd56c01);
  static const Color warningColor_700 = Color(0xFFb25303);
  static const Color warningColor_800 = Color(0xFF8e3c00);
  static const Color warningColor_900 = Color(0xFF752b01);
  static const Color dangerColor_100 = Color(0xFFfbe1cf);
  static const Color dangerColor_200 = Color(0xFFfab9a3);
  static const Color dangerColor_300 = Color(0xFFf18972);
  static const Color dangerColor_400 = Color(0xFFe65c4f);
  static const Color dangerColor_500 = Color(0xFFd51c1a);
  static const Color dangerColor_600 = Color(0xFFb81321);
  static const Color dangerColor_700 = Color(0xFF9b0d25);
  static const Color dangerColor_800 = Color(0xFF7d0825);
  static const Color dangerColor_900 = Color(0xFF660526);
  //Netral Color
  static const Color netralColor_100 = Color(0xFFedeced);
  static const Color netralColor_200 = Color(0xFFebeaeb);
  static const Color netralColor_300 = Color(0xFFd8d7d9);
  static const Color netralColor_400 = Color(0xFFbdbcc0);
  static const Color netralColor_500 = Color(0xFFadabb1);
  static const Color netralColor_600 = Color(0xFF6d6b71);
  static const Color netralColor_700 = Color(0xFF55555f);
  static const Color netralColor_800 = Color(0xFF383842);
  static const Color netralColor_900 = Color(0xFF1c1c26);
  static const Color whiteColor = Color(0xFFffffff);

  //App Text Theme
  static const TextStyle headline1 = TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );
}
