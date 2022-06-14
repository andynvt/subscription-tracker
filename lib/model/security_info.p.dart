import 'package:flutter/material.dart';

class SecurityInfo extends ChangeNotifier {
  final int? id;
  final String? name;

  String get nameDisplay => name ?? '';

  SecurityInfo({this.id, this.name});
}
