import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 42, 42, 42),
  
  primarySwatch: Colors.yellow,

  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      shadowColor: Color.fromARGB(255, 40, 39, 39)),

  listTileTheme: const ListTileThemeData(iconColor: Colors.white),

  dividerTheme: const DividerThemeData(color: Colors.white54),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 24),
    labelSmall: TextStyle(
        color: Color.fromARGB(255, 101, 100, 96),
        fontWeight: FontWeight.w600,
        fontSize: 12),
  ),

  useMaterial3: true,
);
