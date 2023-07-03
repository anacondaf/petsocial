import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFF4F7F0),
  100: Color(0xFFE3EADB),
  200: Color(0xFFD1DCC3),
  300: Color(0xFFBFCEAA),
  400: Color(0xFFB1C498),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF9BB27E),
  700: Color(0xFF91AA73),
  800: Color(0xFF88A269),
  900: Color(0xFF779356),
});
const int _primaryPrimaryValue = 0xFFA3B986;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFDFFFA),
  200: Color(_primaryAccentValue),
  400: Color(0xFFCDFF94),
  700: Color(0xFFC1FF7A),
});

const int _primaryAccentValue = 0xFFE5FFC7;
