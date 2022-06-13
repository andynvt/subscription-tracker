part of new_subscription;

class _NewSubscriptionModel extends TTChangeNotifier<_NewSubscriptionView> {
  final CurrencyTextInputFormatter formatter;
  final TextEditingController controller;

  _NewSubscriptionModel()
      : formatter = CurrencyTextInputFormatter(
          symbol: '\$',
          locale: 'en',
        ),
        controller = TextEditingController() {
    formatter.format('2000');
    controller.text = formatter.getFormattedValue();
  }
  final List<String> carouselImage = [
    Id.img_hbo_logo,
    Id.img_hbo_logo,
    Id.img_hbo_logo,
  ];

  void onAddThisPlatform() {
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createSubscriptionInfo();
    }));
  }

  void onDecreasePressed() {
    double current = formatter.getUnformattedValue().toDouble();
    current = (current - 1) * 10;
    formatter.format(current.toString());
    controller.text = formatter.getFormattedValue();
  }

  void onIncreasePressed() {
    double current = formatter.getUnformattedValue().toDouble();
    current = (current + 1) * 10;
    formatter.format(current.toString());
    controller.text = formatter.getFormattedValue();
  }
}
