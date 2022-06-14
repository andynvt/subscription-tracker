library subscription_info;

import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/model/model.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/utils/utils.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'subscription_info_view.dart';
part 'subscription_info_model.dart';
part 'subscription_info_state.dart';

ChangeNotifierProvider<_SubscriptionInfoModel> createSubscriptionInfo() {
  return ChangeNotifierProvider<_SubscriptionInfoModel>(
    create: (_) => _SubscriptionInfoModel(),
    child: _SubscriptionInfoView(),
  );
}
