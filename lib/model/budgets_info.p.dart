import 'package:flutter/material.dart';
import 'package:subscription_tracker/utils/utils.dart';

class BudgetInfo extends ChangeNotifier {
  final _data = {};
  String get icon => _data['icon'] ?? '';
  String get name => _data['name'] ?? '';
  double get current => _data['current'] ?? '';
  double get total => _data['total']?.toDouble() ?? '';

  String get currentDisplay => NumberUtils.formatCurrency(current);
  String get totalDisplay => NumberUtils.formatCurrency(total);
  String get budgetLeftDisplay => NumberUtils.formatCurrency(total - current);
  double get budgetLeftPercent => current / total;

  BudgetInfo.from(Map e) {
    _data.addAll(e);
  }
}
