part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    final padding = MediaQuery.of(context).padding;
    final activeGradient = LinearGradient(
      colors: [
        Cl.colorCFCFFC00.withOpacity(0.15),
        Cl.colorCFCFFC00.withOpacity(0),
      ],
    );
    const inactiveGradient = LinearGradient(
      colors: [
        Cl.color0E0E12,
        Cl.color0E0E12,
      ],
    );

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Cl.color1C1C23,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 24),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    color: Cl.color3535421,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 32 + padding.top),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(Id.ic_setting),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 286,
                        width: 286,
                        color: Colors.grey[700],
                        child: Column(
                          children: [
                            const SizedBox(height: 74),
                            const TTLogoWidget(height: 19),
                            const SizedBox(height: 24),
                            Text('\$1,235', style: St.body40700.copyWith(color: Cl.colorFFFFFF)),
                            const SizedBox(height: 16),
                            Text(
                              'This month bills',
                              style: St.body12600.copyWith(color: Cl.color83839C),
                            ),
                            const SizedBox(height: 29),
                            const SizedBox(
                              width: 148,
                              child: TTButton(
                                text: 'See your budget',
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          children: [
                            buildListItem(
                              text1: 'Active subs',
                              text2: '12',
                              color: Cl.colorFFA699,
                            ),
                            const SizedBox(width: 8),
                            buildListItem(
                              text1: 'Highest subs',
                              text2: '\$19.99',
                              color: Cl.colorAD7BFF,
                            ),
                            const SizedBox(width: 8),
                            buildListItem(
                              text1: 'Lowest subs',
                              text2: '\$5.99',
                              color: Cl.color7DFFEE,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 21),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Cl.color0E0E12,
                  ),
                  child: TabBar(
                    onTap: model.onTabChanged,
                    labelPadding: EdgeInsets.zero,
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    indicatorWeight: 0,
                    indicator: const BoxDecoration(),
                    tabs: [
                      Tab(
                        child: TTButton(
                          gradient: model.tabIndex == 0 ? activeGradient : inactiveGradient,
                          borderRadius: 16,
                          height: 36,
                          text: 'Your subscriptions',
                          backgroundColor: model.tabIndex == 0 ? Cl.color4E4E61.withOpacity(0.2) : Cl.color0E0E12,
                        ),
                      ),
                      Tab(
                        child: TTButton(
                          gradient: model.tabIndex == 1 ? activeGradient : inactiveGradient,
                          height: 36,
                          borderRadius: 16,
                          text: 'Upcoming bills',
                          backgroundColor: model.tabIndex == 1 ? Cl.color4E4E61.withOpacity(0.2) : Cl.color0E0E12,
                        ),
                      ),
                    ],
                  ),
                ),
                model.tabIndex == 0
                    ? ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        separatorBuilder: (_, i) => const SizedBox(height: 8),
                        shrinkWrap: true,
                        itemCount: model.subscripItems.length,
                        itemBuilder: (_, i) {
                          return buildSubsripItem(
                            subscripItemInfo: model.subscripItems[i],
                          );
                        },
                      )
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        separatorBuilder: (_, i) => const SizedBox(height: 8),
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (_, i) {
                          return buildUpcomingBillsItem(
                            upcomingBillsInfo: model.upcomingbills[i],
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildUpcomingBillsItem({
    required UpcomingBillsInfo upcomingBillsInfo,
  }) {
    return Container(
      height: 64,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Cl.color353542),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(13),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Cl.color353542,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  upcomingBillsInfo.month,
                  style: St.body10500.copyWith(color: Cl.colorA2A2B5),
                ),
                Text(
                  upcomingBillsInfo.date,
                  style: St.body14600.copyWith(color: Cl.colorA2A2B5),
                ),
              ],
            ),
          ),
          Text(
            upcomingBillsInfo.names,
            style: St.body14600.copyWith(color: Cl.colorFFFFFF),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              upcomingBillsInfo.money,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
          )
        ],
      ),
    );
  }

  Container buildSubsripItem({
    required SubscripItemInfo subscripItemInfo,
  }) {
    return Container(
      height: 64,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Cl.color353542),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(subscripItemInfo.icons),
            const SizedBox(width: 15),
            Text(
              subscripItemInfo.names,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
            const Spacer(),
            Text(
              subscripItemInfo.moneyDisplay,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem({
    required String text1,
    required String text2,
    required Color color,
  }) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        TTButton(
          borderRadius: 16,
          height: 68,
          backgroundColor: Cl.color4E4E61.withOpacity(0.2),
          width: 104,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: St.body12600.copyWith(color: Cl.color83839C),
              ),
              Text(
                text2,
                style: St.body14600.copyWith(color: Cl.colorFFFFFF),
              )
            ],
          ),
          gradient: LinearGradient(
            colors: [
              Cl.colorCFCFFC.withOpacity(0.15),
              Cl.colorCFCFFC.withOpacity(0),
            ],
          ),
        ),
        Container(
          height: 1,
          width: 46,
          color: color,
        ),
      ],
    );
  }
}
