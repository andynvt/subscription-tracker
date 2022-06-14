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
  SecurityInfo? securitySelected;
  SortingInfo? sortingSelected;

  bool isiCloudSync = false;

  String get securitySelectedName => securitySelected?.name ?? '';
  String get sortingSelectedName => sortingSelected?.name ?? '';

  _SettingModel() {
    securitySelected = securities.first;
    sortingSelected = sortings.first;
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
}
