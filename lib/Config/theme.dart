import 'dart:convert';

import 'package:cric_eureka/Config/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:theme_controller/cpnfig/colors.dart';

final ThemeData lightTheme =ThemeData(

  //brightness: Brightness.light,
  primarySwatch: Colors.blue,
  useMaterial3: true,
  //scaffoldBgColours:light
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.deepPurple[400],
    titleTextStyle: const TextStyle(
      color:Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    centerTitle: true,
  ),
  colorScheme: ColorScheme.light(
    surface: lightBgColor,
    onSurface: lightFontColor,
    primary: lightPrimaryColor,
    onPrimary: Colors.white,
    secondary: lightLableColor,
    onSecondary: lightFontColor,
    onError: Colors.red,
    primaryContainer: lightDivColor,
    secondaryContainer: lightDivColor,
    onPrimaryContainer: lightFontColor,
    onSecondaryContainer: lightFontColor,

  )
);

final ThemeData darkTheme =ThemeData(

    //brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    useMaterial3: true,
    //scaffoldBgColours:light
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[800],
      titleTextStyle: const TextStyle(
        color:Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
    ),
    colorScheme:  ColorScheme.light(
      surface: darkBgColor,
      onSurface: darkFontColor,
      primary: darkPrimaryColor,
      onPrimary: Colors.white,
      secondary: darkLableColor,
      onSecondary: darkFontColor,
      onError: Colors.red,
      primaryContainer: darkDivColor,
      secondaryContainer: darkDivColor,
      onPrimaryContainer: darkFontColor,
      onSecondaryContainer: darkFontColor,
    )
);