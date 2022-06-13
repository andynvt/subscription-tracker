part of new_subscription;

class _NewSubscriptionViewState extends TTState<_NewSubscriptionModel, _NewSubscriptionView> {
  @override
  Widget buildWithModel(BuildContext context, _NewSubscriptionModel model) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Cl.colorA2A2B5,
        backgroundColor: Cl.color353542,
        elevation: 0,
        title: Text(
          'New',
          style: St.body16400.copyWith(color: Cl.colorA2A2B5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 364 + 32 + 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                color: Cl.color353542,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'Add new subscription',
                    style: St.body40700.copyWith(
                      color: Cl.colorFFFFFF,
                      height: 0.98,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 56),
                  CarouselSlider(
                    items: model.carouselImage.map((e) {
                      return SizedBox(
                        // height: 161,
                        // width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 161,
                              width: 161,
                              child: Image.asset(
                                Id.img_hbo_logo,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 23),
                            Text(
                              'HGBO GO',
                              style: St.body14600.copyWith(color: Cl.colorFFFFFF),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      viewportFraction: 0.6,
                      height: 161 + 23 + 20,
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Description',
              style: St.body12500.copyWith(color: Cl.color666680),
            ),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TTTextField(),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TTButton(
                    onPressed: model.onDecreasePressed,
                    height: 48,
                    width: 48,
                    borderRadius: 16,
                    backgroundColor: Cl.color4E4E61.withOpacity(0.2),
                    child: Image.asset(Id.ic_minus),
                  ),
                  Column(
                    children: [
                      Text(
                        'Mothly price',
                        style: St.body12600.copyWith(color: Cl.color83839C),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        height: 48,
                        width: 162,
                        child: TextFormField(
                          controller: model.controller,
                          // initialValue: model.formatter.format('2000'),
                          style: St.body24700.copyWith(color: Cl.colorFFFFFF),
                          textAlign: TextAlign.center,
                          inputFormatters: <TextInputFormatter>[model.formatter],
                          keyboardType: TextInputType.number,
                          cursorColor: Cl.color353542,
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Cl.color353542,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                  TTButton(
                    onPressed: model.onIncreasePressed,
                    height: 48,
                    width: 48,
                    borderRadius: 16,
                    backgroundColor: Cl.color4E4E61.withOpacity(0.2),
                    child: Image.asset(Id.ic_plus),
                  )
                ],
              ),
            ),
            const SizedBox(height: 39),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TTButton.shadow(
                onPressed: model.onAddThisPlatform,
                text: 'Add this platform',
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
