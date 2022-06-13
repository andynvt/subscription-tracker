library new_subscription;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'new_subscription_view.dart';
part 'new_subscription_model.dart';
part 'new_subscription_state.dart';

ChangeNotifierProvider<_NewSubscriptionModel> createNewSubscription() {
  return ChangeNotifierProvider<_NewSubscriptionModel>(
    create: (_) => _NewSubscriptionModel(),
    child: _NewSubscriptionView(),
  );
}
