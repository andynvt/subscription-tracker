part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      extendBody: true,
      body: buildBody(model),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 48,
        height: 48,
        child: TTButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: Cl.colorFF7966,
          gradient: LinearGradient(
            colors: [
              Cl.colorFFFFFF.withOpacity(0.5),
              Cl.colorFFFFFF.withOpacity(0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home_outlined,
          Icons.category_outlined,
          Icons.calendar_month_outlined,
          Icons.credit_card_outlined,
        ],
        activeIndex: model.pageIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        backgroundColor: Cl.color4E4E61BF,
        activeColor: Cl.colorFFFFFF,
        leftCornerRadius: 20,
        rightCornerRadius: 32,
        onTap: model.onPageChanged,
      ),

      //other params
    );
  }

  Widget buildBody(_HomeModel model) {
    switch (model.pageIndex) {
      case 0:
        return createHomeContent();
      case 1:
        return createMenu();
      case 2:
        return createCalendar();
      case 3:
        return createCreditCards();
      default:
        return const SizedBox();
    }
  }
}
