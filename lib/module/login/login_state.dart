part of login;

class _LoginViewState extends TTState<_LoginModel, _LoginView> {
  @override
  Widget buildWithModel(BuildContext context, _LoginModel model) {
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Id.img_logo1,
                height: 29,
                width: 29,
              ),
              const SizedBox(width: 13),
              Image.asset(Id.img_logo)
            ],
          ),
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
