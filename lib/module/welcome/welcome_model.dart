part of login;

class _WelcomeModel extends TTChangeNotifier<_WelcomeView> {
  void onLoginPressed() {}

  void onGetStartedPressed() {
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createSignUp();
    }));
  }
}
