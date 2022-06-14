import 'package:flutter/material.dart';

class CurrencyInfo extends ChangeNotifier {
  final _data = {};
  String get currency => _data['currency'] ?? '';

  CurrencyInfo.from(Map e) {
    _data.addAll(e);
  }
}
