part of sign_up;

class _SignUpViewState extends TTState<_SignUpModel, _SignUpView> {
  @override
  Widget buildWithModel(BuildContext context, _SignUpModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 58 + MediaQuery.of(context).padding.top,
                bottom: 312,
              ),
              child: const TTLogoWidget(),
            ),
            TTButton.shadow(
              onPressed: model.onSignUpWithApple,
              child: buildSignUpItem(
                imageAsset: Id.ic_apple,
                text: 'Sign up with Apple',
              ),
              shadowColor: Cl.color000000.withOpacity(0.5),
              backgroundColor: Cl.color000000,
              startColor: Cl.colorFFFFFF.withOpacity(0.15),
            ),
            const SizedBox(height: 16),
            TTButton.shadow(
              onPressed: model.onSignUpWithGoogle,
              child: buildSignUpItem(
                imageAsset: Id.ic_google,
                text: 'Sign up with Google',
                color: Cl.color000000,
              ),
              backgroundColor: Cl.colorFFFFFF,
              shadowColor: Cl.colorFFFFFF.withOpacity(0.25),
            ),
            const SizedBox(height: 16),
            TTButton.shadow(
              onPressed: model.onSignUpWithFacebook,
              child: buildSignUpItem(
                imageAsset: Id.ic_facebook,
                text: 'Sign up with Facebook',
              ),
              backgroundColor: Cl.color1771E6,
              shadowColor: Cl.color1771E6.withOpacity(0.5),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Text(
                'or',
                style: St.body14600,
              ),
            ),
            TTButton(
              onPressed: model.onSignUpWithEmail,
              text: 'Sign up with E-mail',
            ),
            const SizedBox(height: 24),
            Text(
              'By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.',
              textAlign: TextAlign.center,
              style: St.body12500.copyWith(color: Cl.color666680),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSignUpItem({
    required String imageAsset,
    required String text,
    Color? color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageAsset),
        const SizedBox(width: 8),
        Text(
          text,
          style: St.body14600.copyWith(
            color: color ?? Cl.colorFFFFFF,
          ),
        ),
      ],
    );
  }
}
