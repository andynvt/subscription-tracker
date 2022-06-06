import 'package:flutter/material.dart';

class SubscripItemInfo extends ChangeNotifier {
  final _data = {};
  String get icons => _data['icons'] ?? '';
  String get names => _data['names'] ?? '';
  String get money => _data['money'] ?? '';

  SubscripItemInfo.from(Map e) {
    _data.addAll(e);
  }
}
