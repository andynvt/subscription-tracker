import 'package:flutter/material.dart';
import 'package:subscription_tracker/utils/utils.dart';

class SubscripItemInfo extends ChangeNotifier {
  final _data = {};
  String get icons => _data['icons'] ?? '';
  String get names => _data['names'] ?? '';
  double get money => _data['money'] ?? '';

  String get moneyDisplay => NumberUtils.formatCurrency(money);

  SubscripItemInfo.from(Map e) {
    _data.addAll(e);
  }
}
