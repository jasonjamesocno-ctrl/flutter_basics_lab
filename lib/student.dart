
import 'package:flutter/material.dart';

// Replace with your own information.
const String studentName = 'BSIT3B_OCNO_JASON';
const String studentId = '241-01851';

// Color depends on the last two digits of your ID.
const List<String> _colorNames = [
  'Red', 'Pink', 'Purple', 'Deep Purple',
  'Indigo', 'Blue', 'Light Blue', 'Cyan',
  'Teal', 'Green', 'Light Green', 'Lime',
  'Yellow', 'Amber', 'Orange', 'Deep Orange',
  'Brown', 'Blue Grey',
];

int get _colorIndex {
  final String digits =
      studentId.replaceAll(RegExp(r'[^0-9]'), '');

  final int lastTwo =
      int.parse(digits.substring(digits.length - 2));

  return lastTwo % Colors.primaries.length;
}

Color get studentColor => Colors.primaries[_colorIndex];

String get studentColorName => _colorNames[_colorIndex];
