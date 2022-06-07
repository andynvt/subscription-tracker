part of menu;

class _MenuModel extends TTChangeNotifier<_MenuView> {
  final budgets = <BudgetInfo>[];

  _MenuModel() {
    _initData();
  }
  void _initData() {
    final lsBudgets = List.generate(10, (index) {
      return BudgetInfo.from(
        {
          'icon': Id.ic_car,
          'name': 'name$index',
          'current': 25.99,
          'total': 400,
        },
      );
    });
    budgets.addAll(lsBudgets);
  }

  void onImplementPressed() {}

  void onAddNewCategoryPressed() {}
}
