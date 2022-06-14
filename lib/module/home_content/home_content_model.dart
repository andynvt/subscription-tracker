part of home_content;

class _HomeContentModel extends TTChangeNotifier<_HomeContentView> {
  late TabController tabController;
  int tabIndex = 0;
  final subscripItems = <SubscripItemInfo>[];
  final upcomingbills = <UpcomingBillsInfo>[];

  _HomeContentModel() {
    _initSubsripsData();
    _initUpcomingbillsData();
  }
  void _initSubsripsData() {
    final lissubscrip = List.generate(30, (index) {
      return SubscripItemInfo.from({
        'icons': Id.ic_logo,
        'names': 'name$index',
        'money': 5.99,
      });
    });

    subscripItems.addAll(lissubscrip);
  }

  void _initUpcomingbillsData() {
    final lsupcomingbills = List.generate(3, (index) {
      return UpcomingBillsInfo.from({
        'date': 'date$index',
        'month': 'month$index',
        'names': 'name$index',
        'money': 'money$index',
      });
    });
    upcomingbills.addAll(lsupcomingbills);
  }

  void onTabChanged(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      notifyListeners();
    }
  }

  void onSettingPressed() {
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createSetting();
    }));
  }
}
