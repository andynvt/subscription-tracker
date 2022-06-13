part of subscription_info;

class _SubscriptionInfoViewState extends TTState<_SubscriptionInfoModel, _SubscriptionInfoView> {
  @override
  Widget buildWithModel(BuildContext context, _SubscriptionInfoModel model) {
    return Scaffold(
      backgroundColor: Cl.color0E0E12,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 24 + MediaQuery.of(context).padding.top,
                    right: 24,
                    left: 24,
                  ),
                  // height: 334,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                    color: Cl.color353542,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(Id.ic_around_down),
                          Text(
                            'Subscription info',
                            style: St.body16400.copyWith(color: Cl.colorA2A2B5),
                          ),
                          Image.asset(Id.ic_trash)
                        ],
                      ),
                      const SizedBox(height: 34),
                      Image.asset(
                        Id.ic_logo,
                        height: 106,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Spotify',
                        style: St.body32700.copyWith(color: Cl.colorFFFFFF),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '.99',
                        style: St.body20700.copyWith(
                          color: Cl.colorA2A2B5,
                        ),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        height: 1,
                        width: double.infinity,
                        child: CustomPaint(
                          // size: const Size(2, 90),
                          painter: DashedLinePainter(),
                        ),
                      ),
                    ],
                  ),
                ),
                buildItem(
                  context: context,
                  left: 11,
                ),
                buildItem(
                  context: context,
                  right: 9,
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 22 + MediaQuery.of(context).padding.bottom,
                    left: 24,
                    right: 24,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                    color: Cl.color282833,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 46, 20, 12),
                        child: OutlineGradientButton(
                          backgroundColor: Cl.color4E4E61.withOpacity(0.2),
                          radius: const Radius.circular(16),
                          gradient: LinearGradient(
                            colors: [
                              Cl.colorCFCFFC.withOpacity(0.15),
                              Cl.colorCFCFFC.withOpacity(0),
                            ],
                          ),
                          strokeWidth: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                buildListInfo(
                                  onPressed: model.onNamePressed,
                                  title: 'Name',
                                  text: 'Spotify',
                                ),
                                buildListInfo(
                                  title: 'Description',
                                  text: 'Music app',
                                ),
                                buildListInfo(
                                  title: 'Category',
                                  text: 'Enterteintment',
                                ),
                                buildListInfo(
                                  title: 'First payment',
                                  text: '08.01.2022',
                                ),
                                buildListInfo(
                                  title: 'Reminder',
                                  text: 'Never',
                                ),
                                buildListInfo(
                                  title: 'Currency',
                                  text: 'USD (\$)',
                                ),

                                // SizedBox(height: 22),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TTButton(
                          text: 'Save',
                          onPressed: model.onSavePressed,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                buildItem(
                  context: context,
                  left: 11,
                  top: -13.5,
                ),
                buildItem(
                  context: context,
                  right: 9,
                  top: -13.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListInfo({
    VoidCallback? onPressed,
    required String title,
    required String text,
  }) {
    return SizedBox(
      height: 32 + 16,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Text(
              title,
              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
            ),
            const Spacer(),
            Text(
              text,
              style: St.body12500.copyWith(color: Cl.colorA2A2B5),
            ),
            const SizedBox(width: 8),
            Image.asset(Id.ic_arrow_right)
          ],
        ),
      ),
    );
  }

  Widget buildItem({
    required BuildContext context,
    double? right,
    double? left,
    double? top,
  }) {
    return Positioned(
      top: top ?? 343 + MediaQuery.of(context).padding.top,
      left: left,
      right: right,
      child: Container(
        height: 27,
        width: 27,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Cl.color0E0E12,
        ),
      ),
    );
  }
}
