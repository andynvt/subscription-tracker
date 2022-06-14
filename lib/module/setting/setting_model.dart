part of setting;

class _SettingModel extends TTChangeNotifier<_SettingView> {
  final securities = [
    SecurityInfo(name: 'FaceID'),
    SecurityInfo(name: 'Password'),
  ];
  final sortings = [
    SortingInfo(name: 'Date'),
    SortingInfo(name: 'Months'),
    SortingInfo(name: 'Year'),
  ];
  final summaries = [
    SummaryInfo(name: 'average1'),
    SummaryInfo(name: 'average2'),
  ];
  final defaultCurrencies = [
    DefaultCurrencyInfo(name: 'USD (\$)'),
    DefaultCurrencyInfo(name: 'VND (D)'),
  ];
  final appIcons = [
    AppIconInfo(name: ' Default1'),
    AppIconInfo(name: ' Default2'),
  ];

  final themes = [
    ThemeInfo(name: 'Dark1'),
    ThemeInfo(name: 'Dark2'),
  ];

  SecurityInfo? securitySelected;
  SortingInfo? sortingSelected;
  SummaryInfo? summarySelected;
  DefaultCurrencyInfo? defaultCurrencySelected;
  AppIconInfo? appIconSelected;
  ThemeInfo? themeSelected;

  bool isiCloudSync = false;

  String get securitySelectedName => securitySelected?.name ?? '';
  String get sortingSelectedName => sortingSelected?.name ?? '';
  String get summarySelectedName => summarySelected?.name ?? '';
  String get defaultCurrencySelectedName => defaultCurrencySelected?.name ?? '';
  String get appIconSelectedName => appIconSelected?.name ?? '';
  String get themeSelectedName => themeSelected?.name ?? '';
  _SettingModel() {
    securitySelected = securities.first;
    sortingSelected = sortings.first;
    summarySelected = summaries.first;
    defaultCurrencySelected = defaultCurrencies.first;
    appIconSelected = appIcons.first;
    themeSelected = themes.first;
  }

  void oniCloudSyncChanged(bool value) {
    if (value != isiCloudSync) {
      isiCloudSync = value;
      notifyListeners();
    }
  }

  void onSecuritySelected(SecurityInfo? value) {
    if (value == null) {
      return;
    }
    if (value == securitySelected) {
      return;
    }
    securitySelected = value;
    notifyListeners();
  }

  void onSortingSelected(SortingInfo? value) {
    if (value == null) {
      return;
    }
    if (value == sortingSelected) {
      return;
    }
    sortingSelected = value;
    notifyListeners();
  }

  void onSummarySelected(SummaryInfo? value) {
    if (value == null) {
      return;
    }
    if (value == summarySelected) {
      return;
    }
    summarySelected = value;
    notifyListeners();
  }

  void onDefaultCurrencySelected(DefaultCurrencyInfo? value) {
    if (value == null) {
      return;
    }
    if (value == defaultCurrencySelected) {
      return;
    }
    defaultCurrencySelected = value;
    notifyListeners();
  }

  void onAppIconSelected(AppIconInfo? value) {
    if (value == null) {
      return;
    }
    if (value == appIconSelected) {
      return;
    }
    appIconSelected = value;
    notifyListeners();
  }

  void onThemeSelected(ThemeInfo? value) {
    if (value == null) {
      return;
    }
    if (value == themeSelected) {
      return;
    }
    themeSelected = value;
    notifyListeners();
  }
}
