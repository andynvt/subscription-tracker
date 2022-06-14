import 'package:flutter/material.dart';

class DefaultCurrencyInfo extends ChangeNotifier {
  final int? id;
  final String? name;

  String get nameDisplay => name ?? '';

  DefaultCurrencyInfo({this.id, this.name});
}
