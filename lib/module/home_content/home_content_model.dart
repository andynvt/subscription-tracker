part of home_content;

class _HomeContentModel extends TTChangeNotifier<_HomeContentView> {
  int tabIndex = 0;
  final subscripItems = <SubscripItemInfo>[];
  _HomeContentModel() {
    _initData();
  }
  void _initData() {
    final lissubscrip = List.generate(3, (index) {
      return SubscripItemInfo.from({
        'icons': Id.ic_logo,
        'names': 'name$index',
        'money': 'money$index',
      });
    });
    subscripItems.addAll(lissubscrip);
  }

  void onTabChanged(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      notifyListeners();
    }
  }
}
