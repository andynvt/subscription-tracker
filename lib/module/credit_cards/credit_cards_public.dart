library credit_cards;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscription_tracker/widget/widget.dart';

part 'credit_cards_view.dart';
part 'credit_cards_model.dart';
part 'credit_cards_state.dart';

ChangeNotifierProvider<_CreditCardsModel> createCreditCards() {
  return ChangeNotifierProvider<_CreditCardsModel>(
    create: (_) => _CreditCardsModel(),
    child: _CreditCardsView(),
  );
}
