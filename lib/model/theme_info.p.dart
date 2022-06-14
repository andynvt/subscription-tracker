import 'package:flutter/material.dart';

class ThemeInfo extends ChangeNotifier {
  final int? id;
  final String? name;
  String get themeDisplay => name ?? '';

  ThemeInfo({this.id, this.name});
}
