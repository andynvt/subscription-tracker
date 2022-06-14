library setting;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/model/model.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'setting_view.dart';
part 'setting_model.dart';
part 'setting_state.dart';

ChangeNotifierProvider<_SettingModel> createSetting() {
  return ChangeNotifierProvider<_SettingModel>(
    create: (_) => _SettingModel(),
    child: _SettingView(),
  );
}
