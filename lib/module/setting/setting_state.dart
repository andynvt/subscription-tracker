part of setting;

class _SettingViewState extends TTState<_SettingModel, _SettingView> {
  @override
  Widget buildWithModel(BuildContext context, _SettingModel model) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: St.body16400.copyWith(color: Cl.colorA2A2B5),
        ),
        elevation: 0,
        backgroundColor: Cl.color1C1C23,
        foregroundColor: Cl.colorA2A2B5,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.network(
                    'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
                    height: 72,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'John Doe',
                  style: St.body20700.copyWith(color: Cl.colorFFFFFF),
                ),
              ),
              // SizedBox(height: ),
              const Center(
                child: Text(
                  'j.doe@gmail.com',
                  style: St.body12500,
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: TTButton(
                  text: 'Edit profile',
                  width: 87,
                  height: 32,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'General',
                style: St.body14600.copyWith(color: Cl.colorFFFFFF),
              ),
              const SizedBox(height: 8),
              buildGeneralItem(),
              const SizedBox(height: 24),
              Text(
                'My subscriptions',
                style: St.body14600.copyWith(color: Cl.colorFFFFFF),
              ),
              const SizedBox(height: 8),

              buildMySubscriptionsItem(),

              const SizedBox(height: 24),
              Text(
                'Appearance',
                style: St.body14600.copyWith(color: Cl.colorFFFFFF),
              ),
              const SizedBox(height: 8),

              OutlineGradientButton(
                backgroundColor: Cl.color4E4E61.withOpacity(0.2),
                radius: const Radius.circular(16),
                gradient: LinearGradient(
                  colors: [
                    Cl.colorCFCFFC.withOpacity(0.15),
                    Cl.colorCFCFFC.withOpacity(0),
                  ],
                ),
                strokeWidth: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      buildlistItem(
                        imageAsset: Id.ic_app_icon,
                        name: 'App icon',
                        text: 'Default',
                      ),
                      buildlistItem(
                        imageAsset: Id.ic_light_theme,
                        name: 'Theme',
                        text: 'Dark',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMySubscriptionsItem() {
    return OutlineGradientButton(
      backgroundColor: Cl.color4E4E61.withOpacity(0.2),
      radius: const Radius.circular(16),
      gradient: LinearGradient(
        colors: [
          Cl.colorCFCFFC.withOpacity(0.15),
          Cl.colorCFCFFC.withOpacity(0),
        ],
      ),
      strokeWidth: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PopupMenuButton(
              itemBuilder: (_) {
                return List.generate(model.sortings.length, (index) {
                  final item = model.sortings[index];
                  return PopupMenuItem(
                      child: Text(
                        item.nameDisplay,
                      ),
                      value: item);
                });
              },
              onSelected: model.onSortingSelected,
              offset: const Offset(50, 0),
              child: buildlistItem(
                imageAsset: Id.ic_sorting,
                name: 'Sorting',
                text: model.sortingSelectedName,
              ),
            ),
            buildlistItem(
              imageAsset: Id.ic_chart,
              name: 'Summary',
              text: 'Average',
            ),
            buildlistItem(
              imageAsset: Id.ic_money,
              name: 'Default currency',
              text: 'USD (\$)',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGeneralItem() {
    return OutlineGradientButton(
      backgroundColor: Cl.color4E4E61.withOpacity(0.2),
      radius: const Radius.circular(16),
      gradient: LinearGradient(
        colors: [
          Cl.colorCFCFFC.withOpacity(0.15),
          Cl.colorCFCFFC.withOpacity(0),
        ],
      ),
      strokeWidth: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PopupMenuButton(
              itemBuilder: (_) {
                return List.generate(model.securities.length, (index) {
                  final item = model.securities[index];
                  return PopupMenuItem(
                    value: item,
                    child: Text(item.nameDisplay),
                  );
                });
              },
              offset: Offset(50, 0),
              onSelected: model.onSecuritySelected,
              child: buildlistItem(
                imageAsset: Id.ic_faceid,
                name: 'Security',
                text: model.securitySelectedName,
              ),
            ),
            Row(
              children: [
                Image.asset(Id.ic_icloud),
                const SizedBox(width: 20),
                Text(
                  'iCloud Sync',
                  style: St.body14600.copyWith(color: Cl.colorFFFFFF),
                ),
                const Spacer(),
                const SizedBox(width: 8),
                CupertinoSwitch(
                  activeColor: Cl.colorFF7966,
                  value: model.isiCloudSync,
                  onChanged: model.oniCloudSyncChanged,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildlistItem({
    required String imageAsset,
    required String name,
    required String text,
    String? icon,
  }) {
    return SizedBox(
      height: 32 + 16,
      child: Row(
        children: [
          Image.asset(imageAsset),
          const SizedBox(width: 20),
          Text(
            name,
            style: St.body14600.copyWith(color: Cl.colorFFFFFF),
          ),
          const Spacer(),
          Text(
            text,
            style: St.body12500.copyWith(color: Cl.colorA2A2B5),
          ),
          const SizedBox(width: 8),
          Image.asset(icon ?? Id.ic_arrow_right),
        ],
      ),
    );
  }
}
