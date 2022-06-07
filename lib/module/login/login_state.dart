part of login;

class _LoginViewState extends TTState<_LoginModel, _LoginView> {
  @override
  Widget buildWithModel(BuildContext context, _LoginModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: model.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 58 + MediaQuery.of(context).padding.top),
                child: const TTLogoWidget(
                  height: 24,
                ),
              ),
              const SizedBox(height: 160),
              Text(
                'Login',
                style: St.body12500.copyWith(color: Cl.color666680),
              ),
              const SizedBox(height: 4),
              TTTextField(
                controller: model.loginController,
                onChanged: (v) => model.validate(),
                textType: TextType.email,
                isRequired: true,
              ),
              const SizedBox(height: 16),
              Text(
                'Password',
                style: St.body12500.copyWith(color: Cl.color666680),
              ),
              const SizedBox(height: 4),
              TTTextField(
                textType: TextType.password,
                isRequired: true,
                obscureText: true,
                controller: model.passwordController,
                onChanged: (v) => model.validate(),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  // Checkbox(
                  //   value: true,
                  //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  //   side: MaterialStateBorderSide.resolveWith(
                  //     (states) => BorderSide(width: 1.0, color: Colors.red),
                  //   ),
                  //   activeColor: Colors.transparent,
                  //   checkColor: Colors.red,
                  //   onChanged: (_) {},
                  // ),
                  InkWell(
                    onTap: model.onCheckPressed,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Cl.color353542),
                      ),
                      child: Center(
                        child: model.isShowCheck
                            ? const Icon(
                                Icons.check,
                                color: Cl.colorFF7966,
                              )
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Remember me',
                    style: St.body14400.copyWith(color: Cl.color666680),
                  ),
                  const Spacer(),
                  MaterialButton(
                    onPressed: model.onForgotPassword,
                    child: Text(
                      'Forgot password',
                      style: St.body14400.copyWith(color: Cl.color666680),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              TTButton.shadow(
                onPressed: model.enable ? model.onSignInPressed : null,
                text: 'Sign In',
              ),
              const SizedBox(height: 150),
              Center(
                child: Text(
                  'If you don\'t have an account yet?',
                  style: St.body14400.copyWith(color: Cl.colorFFFFFF),
                ),
              ),
              const SizedBox(height: 20),
              const TTButton(
                text: 'Sign Un',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
