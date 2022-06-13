import 'package:flutter/material.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';

class SubscriptionTracker extends StatelessWidget {
  const SubscriptionTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Cl.color1C1C23,
      ),
      home: createHome(),
    );
  }
}
