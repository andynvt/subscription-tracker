import 'package:flutter/material.dart';

class SortingInfo extends ChangeNotifier {
  final int? id;
  final String? name;

  String get nameDisplay => name ?? '';

  SortingInfo({this.id, this.name});
}
