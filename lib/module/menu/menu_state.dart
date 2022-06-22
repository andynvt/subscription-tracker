part of menu;

class _MenuViewState extends TTState<_MenuModel, _MenuView> {
  @override
  Widget buildWithModel(BuildContext context, _MenuModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Spending & Budgets',
          style: St.body16400.copyWith(color: Cl.colorA2A2B5),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: model.onImplementPressed,
            icon: Image.asset(
              Id.ic_setting,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const SizedBox(height: 43),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        '\$82,97',
                        style: St.body24700,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'of\$2,000 budget',
                        style: St.body12500.copyWith(color: Cl.colorA2A2B5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 60,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    border: Border.all(color: Cl.color4E4E61),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your budgets are on track',
                        style: St.body14600.copyWith(color: Cl.colorFFFFFF),
                      ),
                      const SizedBox(width: 8),
                      Image.asset(Id.ic_like),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, i) => const SizedBox(height: 8),
                  itemCount: model.budgets.length + 1,
                  itemBuilder: (_, i) {
                    if (i == model.budgets.length) {
                      return buildAddNewCategoryButton();
                    }
                    return buildBudgetsItem(
                      budgetInfo: model.budgets[i],
                    );
                  },
                ),
                const SizedBox(height: 50)
              ],
            ),
            Positioned(
              height: 180 + MediaQuery.of(context).padding.top,
              child: SfRadialGauge(
                enableLoadingAnimation: true,
                axes: <RadialAxis>[
                  RadialAxis(
                    offsetUnit: GaugeSizeUnit.factor,
                    startAngle: 180,
                    endAngle: 0,
                    axisLineStyle: const AxisLineStyle(
                      thickness: 12,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Cl.color4E4E61,
                    ),

                    // centerX: 0.5,
                    // centerY: 0.5,
                    radiusFactor: 0.9,
                    showLabels: false,
                    showTicks: false,
                    minimum: 0,
                    maximum: 100,
                    ranges: [
                      GaugeRange(
                        startValue: 0,
                        endValue: 30,
                        color: Cl.color00FAD9,
                        rangeOffset: 1,
                      ),
                      GaugeRange(
                        startValue: 30,
                        endValue: 80,
                        color: Cl.colorFF7966,
                        rangeOffset: 1,
                      ),
                      GaugeRange(
                        startValue: 80,
                        endValue: 100,
                        color: Cl.colorAD7BFF,
                        rangeOffset: 1,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildAddNewCategoryButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: MaterialButton(
        onPressed: model.onAddNewCategoryPressed,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: DottedBorder(
          padding: EdgeInsets.zero,
          borderType: BorderType.RRect,
          radius: const Radius.circular(16),
          color: Cl.color4E4E61,
          child: SizedBox(
            height: 84,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add new category',
                  style: St.body14600.copyWith(
                    color: Cl.colorA2A2B5,
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset(Id.ic_add),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBudgetsItem({required BudgetInfo budgetInfo}) {
    return Container(
      height: 84,
      padding: const EdgeInsets.only(left: 16, right: 18),
      margin: const EdgeInsets.symmetric(horizontal: 23),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Cl.colorCFCFFC.withOpacity(0.15),
          Cl.colorCFCFFC.withOpacity(0),
        ]),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Cl.color4E4E61.withOpacity(0.2),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(budgetInfo.icon),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            budgetInfo.name,
                            style: St.body14600.copyWith(color: Cl.colorFFFFFF),
                          ),
                        ),
                        Text(
                          budgetInfo.currentDisplay,
                          style: St.body14600.copyWith(color: Cl.colorFFFFFF),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${budgetInfo.budgetLeftDisplay} left to spend',
                            style: St.body12500.copyWith(color: Cl.colorA2A2B5),
                          ),
                        ),
                        Text(
                          budgetInfo.totalDisplay,
                          style: St.body12500.copyWith(color: Cl.colorA2A2B5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: budgetInfo.budgetLeftPercent,
            color: Cl.color00FAD9,
            backgroundColor: Cl.color4E4E61,
          ),
        ],
      ),
    );
  }
}
