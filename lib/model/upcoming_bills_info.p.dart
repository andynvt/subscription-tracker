import 'package:flutter/material.dart';

class UpcomingBillsInfo extends ChangeNotifier {
  final _data = {};
  String get date => _data['date'] ?? '';
  String get month => _data['month'] ?? '';
  String get names => _data['names'] ?? '';
  String get money => _data['money'] ?? '';

  UpcomingBillsInfo.from(Map e) {
    _data.addAll(e);
  }
}
