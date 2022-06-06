part of credit_cards;

class _CreditCardsViewState extends TTState<_CreditCardsModel, _CreditCardsView> {
  @override
  Widget buildWithModel(BuildContext context, _CreditCardsModel model) {
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
