part of sign_up;

class _SignUpModel extends TTChangeNotifier<_SignUpView> {
  void onSignUpWithApple() {}

  void onSignUpWithGoogle() {}

  void onSignUpWithFacebook() {}

  void onSignUpWithEmail() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) {
          return createSignUpEmail();
        },
      ),
    );
  }
}
