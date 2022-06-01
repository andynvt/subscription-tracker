import 'package:flutter/material.dart';
import 'package:subscription_tracker/module/module.dart';

class SubscriptionTracker extends StatelessWidget {
  const SubscriptionTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createLogin(),
    );
  }
}
