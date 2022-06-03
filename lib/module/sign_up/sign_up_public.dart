library sign_up;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'sign_up_view.dart';
part 'sign_up_model.dart';
part 'sign_up_state.dart';

ChangeNotifierProvider<_SignUpModel> createSignUp() {
  return ChangeNotifierProvider<_SignUpModel>(
    create: (_) => _SignUpModel(),
    child: _SignUpView(),
  );
}
