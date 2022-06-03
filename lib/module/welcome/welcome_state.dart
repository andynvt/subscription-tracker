part of login;

class _WelcomeViewState extends TTState<_WelcomeModel, _WelcomeView> {
  @override
  Widget buildWithModel(BuildContext context, _WelcomeModel model) {
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(top: 150 + padding.top),
            child: Image.asset(Id.img_colorful_background),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 120 + padding.top,
          ),
          child: Image.asset(Id.img_background_left),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 148 + padding.top,
          ),
          child: Image.asset(
            Id.img_background,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 396 + padding.top,
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(Id.img_background_right),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 65),
          child: TTLogoWidget(),
        ),
        Positioned(
          left: 25,
          right: 25,
          bottom: 30 + padding.bottom,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                  style: St.body14400.copyWith(color: Cl.colorFFFFFF),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 39),
              TTButton.shadow(
                text: 'Get started',
                onPressed: model.onGetStartedPressed,
              ),
              const SizedBox(height: 16),
              TTButton(
                text: 'I have an account',
                onPressed: model.onLoginPressed,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
