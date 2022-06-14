import 'package:flutter/material.dart';

class AppIconInfo extends ChangeNotifier {
  final int? id;
  final String? name;

  String get nameDisplay => name ?? '';

  AppIconInfo({this.id, this.name});
}
