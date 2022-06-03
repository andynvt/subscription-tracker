library login;

import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'login_view.dart';
part 'login_model.dart';
part 'login_state.dart';

ChangeNotifierProvider<_LoginModel> createLogin() {
  return ChangeNotifierProvider<_LoginModel>(
    create: (_) => _LoginModel(),
    child: _LoginView(),
  );
}
