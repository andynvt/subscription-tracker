part of subscription_info;

class _SubscriptionInfoModel extends TTChangeNotifier<_SubscriptionInfoView> {
  final categories = <CategoryInfo>[];
  final reminders = <ReminderInfo>[];
  final currencies = <CurrencyInfo>[];
  CategoryInfo? categorySelected;
  DateTime? firstPayment;
  ReminderInfo? reminderSelected;
  CurrencyInfo? currencySelected;

  String get categorySelectedName => categorySelected?.name ?? '';
  String get reminderSelectedName => reminderSelected?.reminder ?? '';
  String get currencySelectedName => currencySelected?.currency ?? '';

  _SubscriptionInfoModel() {
    _initData();
  }
  void _initData() {
    final lscaterogy = List.generate(3, (index) {
      return CategoryInfo.from({
        'name': 'name$index',
      });
    });
    categories.addAll(lscaterogy);
    categorySelected = categories.first;

    final lsreminder = List.generate(3, (index) {
      return ReminderInfo.from({
        'reminder': 'reminder$index',
      });
    });
    reminders.addAll(lsreminder);
    reminderSelected = reminders.first;

    final lscurrency = List.generate(3, (index) {
      return CurrencyInfo.from({
        'currency': 'currency$index',
      });
    });
    currencies.addAll(lscurrency);

    currencySelected = currencies.first;
  }

  void onSavePressed() {}

  void onNamePressed() {
    showTextfieldDialog(context!);
  }

  void onDescriptionPressed() {
    showTextfieldDialog(context!);
  }

  void onCategoryChanged(CategoryInfo? value) {
    if (value == null) {
      return;
    }
    if (value == categorySelected) {
      return;
    }
    categorySelected = value;
    notifyListeners();
  }

  void onPaymentSelected() async {
    final date = await showDatePicker(
      context: context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date == null) {
      return;
    }
    firstPayment = date;
    notifyListeners();
  }

  void onReminderChanged(ReminderInfo? value) {
    if (value == null) {
      return;
    }
    if (value == reminderSelected) {
      return;
    }
    reminderSelected = value;
    notifyListeners();
  }

  void onCurrencyChanged(CurrencyInfo? value) {
    if (value == null) {
      return;
    }
    if (value == currencySelected) {
      return;
    }
    currencySelected = value;

    notifyListeners();
  }
}
