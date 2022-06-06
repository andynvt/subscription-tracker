part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    final padding = MediaQuery.of(context).padding;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Cl.color1C1C23,
        body: Stack(
          children: [
            Container(
              height: padding.top + 429 + 24,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  color: Cl.color353542),
            ),
            Positioned(
              top: 40 + padding.top,
              right: 23,
              child: Image.asset(Id.ic_setting),
            ),
            Column(
              children: [
                SizedBox(height: 137 + padding.top),
                const TTLogoWidget(),
                const SizedBox(height: 24),
                Text('1,235', style: St.body40700.copyWith(color: Cl.colorFFFFFF)),
                const SizedBox(height: 16),
                Text(
                  'This month bills',
                  style: St.body12600.copyWith(color: Cl.color83839C),
                ),
                const SizedBox(height: 29),
                const TTButton(
                  text: 'See your budget',
                  height: 32,
                  width: 120,
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    children: [
                      buildlistitem(
                        text1: 'Active subs',
                        text2: '12',
                        color: Cl.colorFFA699,
                      ),
                      const SizedBox(width: 8),
                      buildlistitem(
                        text1: 'Highest subs',
                        text2: '19.99',
                        color: Cl.colorAD7BFF,
                      ),
                      const SizedBox(width: 8),
                      buildlistitem(
                        text1: 'Lowest subs',
                        text2: '5.99',
                        color: Cl.color7DFFEE,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 45),
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
                    tabs: [
                      Tab(
                        child: TTButton(
                          gradient: model.tabIndex == 0
                              ? LinearGradient(
                                  colors: [
                                    Cl.colorCFCFFC00.withOpacity(0.15),
                                    Cl.colorCFCFFC00.withOpacity(0),
                                  ],
                                )
                              : null,
                          borderRadius: 16,
                          height: 36,
                          text: 'Your subscriptions',
                          backgroundColor: model.tabIndex == 0 ? Cl.color334E4E61 : Cl.color0E0E12,
                        ),
                      ),
                      Tab(
                        child: TTButton(
                          gradient: model.tabIndex == 1
                              ? LinearGradient(
                                  colors: [
                                    Cl.colorCFCFFC00.withOpacity(0.15),
                                    Cl.colorCFCFFC00.withOpacity(0),
                                  ],
                                )
                              : null,
                          height: 36,
                          borderRadius: 16,
                          text: 'Upcoming bills',
                          backgroundColor: model.tabIndex == 1 ? Cl.color334E4E61 : Cl.color0E0E12,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 16),
                Expanded(
                  child: TabBarView(children: [
                    ListView.separated(
                      separatorBuilder: (_, i) => const SizedBox(height: 8),
                      itemCount: 3,
                      itemBuilder: (_, i) {
                        return buildSubsripItem(
                          subscripItemInfo: model.subscripItems[i],
                        );
                      },
                    ),
                    ListView.separated(
                        separatorBuilder: (_, i) => const SizedBox(height: 8),
                        itemCount: 3,
                        itemBuilder: (_, i) {
                          return Container(
                            height: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Cl.color353542,
                            ),
                          );
                        }),
                  ]),
                )
              ],
            )
          ],
        ),
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
              subscripItemInfo.money,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
          ],
        ),
      ),
    );
  }

  Stack buildlistitem({
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
          backgroundColor: Cl.color4E4E61BF.withOpacity(0.2),
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
              Cl.color26CFCFFC.withOpacity(0.15),
              Cl.color26CFCFFC.withOpacity(0),
            ],
          ),
        ),
        Container(
          height: 1,
          width: 46,
          color: color,
        )
      ],
    );
  }
}
