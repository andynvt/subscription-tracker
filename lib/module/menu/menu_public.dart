library menu;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'menu_view.dart';
part 'menu_model.dart';
part 'menu_state.dart';

ChangeNotifierProvider<_MenuModel> createMenu() {
  return ChangeNotifierProvider<_MenuModel>(
    create: (_) => _MenuModel(),
    child: _MenuView(),
  );
}
