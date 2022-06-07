part of login;

class _LoginModel extends TTChangeNotifier<_LoginView> {
  final TextEditingController loginController;
  final TextEditingController passwordController;
  bool enable = false;
  final formKey = GlobalKey<FormState>();
  bool isShowCheck = false;

  _LoginModel()
      : loginController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = loginController.text.isNotEmpty && passwordController.text.isNotEmpty;
    notifyListeners();
  }

  void onSignInPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createHome();
    }));
  }

  void onCheckPressed() {
    isShowCheck = !isShowCheck;

    notifyListeners();
  }

  void onForgotPassword() {}
}
