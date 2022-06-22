library credit_cards;

import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/widget/widget.dart';
import 'package:swipe_deck/swipe_deck.dart';

part 'credit_cards_view.dart';
part 'credit_cards_model.dart';
part 'credit_cards_state.dart';

ChangeNotifierProvider<_CreditCardsModel> createCreditCards() {
  return ChangeNotifierProvider<_CreditCardsModel>(
    create: (_) => _CreditCardsModel(),
    child: _CreditCardsView(),
  );
}
