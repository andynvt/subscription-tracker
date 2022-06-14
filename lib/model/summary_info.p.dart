import 'package:flutter/material.dart';

class SummaryInfo extends ChangeNotifier {
  final int? id;
  final String? name;
  String get summaryDisplay => name ?? '';

  SummaryInfo({this.id, this.name});
}
