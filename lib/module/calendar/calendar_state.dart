part of calendar;

class _CalendarViewState extends TTState<_CalendarModel, _CalendarView> {
  @override
  Widget buildWithModel(BuildContext context, _CalendarModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      appBar: AppBar(
        backgroundColor: Cl.color353542,
        elevation: 0,
        title: Text(
          'Calendar',
          style: St.body16400.copyWith(color: Cl.colorA2A2B5),
        ),
        actions: [
          Image.asset(Id.ic_setting),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250 + MediaQuery.of(context).padding.top,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              color: Cl.color353542,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Subs Schedule',
                    style: St.body40700.copyWith(
                      color: Cl.colorFFFFFF,
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Text(
                        '3 subscriptions for today',
                        style: St.body14600.copyWith(color: Cl.colorA2A2B5),
                      ),
                      const Spacer(),
                      // Expanded(
                      //   child: TTButton(
                      //     borderRadius: 16,
                      //     height: 32,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text(
                      //           'January',
                      //           style: St.body12600.copyWith(color: Cl.colorFFFFFF),
                      //         ),
                      //         const SizedBox(width: 6),
                      //         const Icon(
                      //           Icons.keyboard_arrow_down,
                      //           color: Cl.colorFFFFFF,
                      //           size: 15,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 32,
                        width: 98,
                        child: TTButton(
                          borderRadius: 16,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DropdownButton<DateTime>(
                              value: model.monthSelected,
                              elevation: 8,
                              dropdownColor: Cl.color353542,
                              style: St.body12600,
                              icon: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Cl.colorFFFFFF,
                              ),
                              iconSize: 15,
                              underline: const SizedBox(),
                              onChanged: model.onMonthChanged,
                              items: model.months.map<DropdownMenuItem<DateTime>>((DateTime value) {
                                return DropdownMenuItem<DateTime>(
                                  value: value,
                                  child: Text(
                                    DateTimeUtils.monthFormat(value),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(height: 30),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, i) {
                        return const SizedBox(width: 8);
                      },
                      shrinkWrap: true,
                      itemCount: model.dates.length,
                      itemBuilder: (_, i) {
                        return buildCalendarItem(
                          dateTime: model.dates[i],
                          hasSubscription: true,
                          isToday: model.isToday(model.dates[i]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  'January',
                  style: St.body20700.copyWith(color: Cl.colorFFFFFF),
                ),
                const Spacer(),
                Text(
                  '\$24.98',
                  style: St.body20700.copyWith(color: Cl.colorFFFFFF),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  '01.08.2022',
                  style: St.body12500.copyWith(color: Cl.colorA2A2B5),
                ),
                const Spacer(),
                Text(
                  'in upcoming bills',
                  style: St.body12500.copyWith(color: Cl.colorA2A2B5),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: 168 / 160,
                ),
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: model.calendars.length,
                itemBuilder: (_, i) {
                  return buildListItem(
                    subscripItemInfo: model.calendars[i],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget buildListItem({
    required SubscripItemInfo subscripItemInfo,
  }) {
    return OutlineGradientButton(
      inkWell: true,
      backgroundColor: Cl.color4E4E61.withOpacity(0.2),
      padding: EdgeInsets.zero,
      gradient: LinearGradient(
        colors: [
          Cl.colorCFCFFC.withOpacity(0.15),
          Cl.colorCFCFFC.withOpacity(0),
        ],
      ),
      radius: const Radius.circular(16),
      strokeWidth: 1,
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 11, left: 16),
        height: 168,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Id.ic_logo),
            const SizedBox(height: 44),
            Text(
              subscripItemInfo.names,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
            const SizedBox(height: 5),
            Text(
              subscripItemInfo.moneyDisplay,
              style: St.body20700.copyWith(color: Cl.colorFFFFFF),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCalendarItem({
    required DateTime dateTime,
    bool isToday = false,
    bool hasSubscription = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: TTButton(
        backgroundColor: isToday ? Cl.color4E4E61 : Cl.color4E4E61.withOpacity(0.2),
        height: 103,
        width: 48,
        borderRadius: 16,
        gradient: LinearGradient(
          colors: [
            Cl.colorCFCFFC.withOpacity(0.15),
            Cl.colorCFCFFC.withOpacity(0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(
                dateTime.day.toString(),
                style: St.body20700.copyWith(color: Cl.colorFFFFFF),
              ),
              Text(
                DateTimeUtils.weekdayFormat(dateTime),
                style: St.body12500.copyWith(color: Cl.colorA2A2B5),
              ),
              const SizedBox(height: 27),
              if (hasSubscription)
                Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Cl.colorFF7966,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
