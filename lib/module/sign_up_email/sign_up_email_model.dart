part of sign_up_email;

class _SignUpEmailModel extends TTChangeNotifier<_SignUpEmailView> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;

  _SignUpEmailModel()
      : emailController = TextEditingController(),
        passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    notifyListeners();
  }

  void onGetStartedPressed() {
    Navigator.of(context!).push(MaterialPageRoute(builder: (_) {
      return createHome();
    }));
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
  }

  void onSignInPressed() {}
}
