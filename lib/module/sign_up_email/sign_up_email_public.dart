library sign_up_email;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/module/module.dart';
import 'package:subscription_tracker/res/colors.p.dart';
import 'package:subscription_tracker/res/style.p.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'sign_up_email_view.dart';
part 'sign_up_email_model.dart';
part 'sign_up_email_state.dart';

ChangeNotifierProvider<_SignUpEmailModel> createSignUpEmail() {
  return ChangeNotifierProvider<_SignUpEmailModel>(
    create: (_) => _SignUpEmailModel(),
    child: _SignUpEmailView(),
  );
}
