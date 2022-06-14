import 'package:flutter/material.dart';

class CategoryInfo extends ChangeNotifier {
  final _data = {};
  String get name => _data['name'] ?? '';

  CategoryInfo.from(Map e) {
    _data.addAll(e);
  }
}
