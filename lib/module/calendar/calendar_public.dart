library calendar;

import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/model/subscrip_item_info.p.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/utils/utils.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'calendar_view.dart';
part 'calendar_model.dart';
part 'calendar_state.dart';

ChangeNotifierProvider<_CalendarModel> createCalendar() {
  return ChangeNotifierProvider<_CalendarModel>(
    create: (_) => _CalendarModel(),
    child: _CalendarView(),
  );
}
