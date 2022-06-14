import 'package:flutter/material.dart';

class ReminderInfo extends ChangeNotifier {
  final _data = {};
  String get reminder => _data['reminder'] ?? '';

  ReminderInfo.from(Map e) {
    _data.addAll(e);
  }
}
