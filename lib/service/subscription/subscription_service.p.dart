import 'package:flutter/material.dart';

SubscriptionService get subSrv => SubscriptionService.shared();

class SubscriptionService extends ChangeNotifier {
  static SubscriptionService? _sInstance;

  SubscriptionService._();

  factory SubscriptionService.shared() {
    return _sInstance ??= SubscriptionService._();
  }
}
