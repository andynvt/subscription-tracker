part of home;

class _HomeModel extends TTChangeNotifier<_HomeView> {
  int pageIndex = 0;

  void onPageChanged(int index) {
    if (pageIndex != index) {
      pageIndex = index;
      notifyListeners();
    }
  }

  void onAddNewSubscription() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createNewSubscription(),
      ),
    );
  }
}
