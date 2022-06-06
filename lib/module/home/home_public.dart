library home;

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'home_view.dart';
part 'home_model.dart';
part 'home_state.dart';

ChangeNotifierProvider<_HomeModel> createHome() {
  return ChangeNotifierProvider<_HomeModel>(
    create: (_) => _HomeModel(),
    child: _HomeView(),
  );
}
