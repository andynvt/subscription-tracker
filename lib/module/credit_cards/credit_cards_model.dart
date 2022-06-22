part of credit_cards;

class _CreditCardsModel extends TTChangeNotifier<_CreditCardsView> {
  void onSettingPressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(builder: (_) {
        return createSetting();
      }),
    );
  }
}
