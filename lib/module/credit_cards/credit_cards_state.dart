part of credit_cards;

class _CreditCardsViewState extends TTState<_CreditCardsModel, _CreditCardsView> {
  @override
  Widget buildWithModel(BuildContext context, _CreditCardsModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      appBar: AppBar(
        title: Text(
          'Credit Cards',
          style: St.body14600.copyWith(color: Cl.colorA2A2B5),
        ),
        actions: [
          Image.asset(
            Id.ic_setting,
          ),
        ],
        elevation: 0,
        backgroundColor: Cl.color1C1C23,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 281,
              height: 378,
              color: Cl.colorFFFFFF,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            'Subscriptions',
            style: St.body16600.copyWith(color: Cl.colorFFFFFF),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            height: 40,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (_, i) {
                return const SizedBox(width: 8);
              },
              itemBuilder: (_, i) {
                return Image.asset(Id.ic_logo);
              },
              itemCount: 15,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: Cl.color353542,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 130),
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: DottedBorder(
                    padding: EdgeInsets.zero,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(16),
                    color: Cl.color4E4E61,
                    child: SizedBox(
                      height: 52,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add new card',
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
