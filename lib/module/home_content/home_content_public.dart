library home_content;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:subscription_tracker/model/model.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'home_content_view.dart';
part 'home_content_model.dart';
part 'home_content_state.dart';

ChangeNotifierProvider<_HomeContentModel> createHomeContent() {
  return ChangeNotifierProvider<_HomeContentModel>(
    create: (_) => _HomeContentModel(),
    child: _HomeContentView(),
  );
}
