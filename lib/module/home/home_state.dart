part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      body: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(Id.ic_home),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Id.ic_menu),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Id.ic_calendar),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Id.ic_credit_cards),
          ),
        ],
      ),
    );
  }
}
