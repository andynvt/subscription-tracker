library login;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'welcome_view.dart';
part 'welcome_model.dart';
part 'welcome_state.dart';

ChangeNotifierProvider<_WelcomeModel> createWelcome() {
  return ChangeNotifierProvider<_WelcomeModel>(
    create: (_) => _WelcomeModel(),
    child: _WelcomeView(),
  );
}
