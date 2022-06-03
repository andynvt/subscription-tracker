part of sign_up_email;

class _SignUpEmailViewState extends TTState<_SignUpEmailModel, _SignUpEmailView> {
  @override
  Widget buildWithModel(BuildContext context, _SignUpEmailModel model) {
    return Scaffold(
      backgroundColor: Cl.color1C1C23,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Form(
            key: model.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 58 + MediaQuery.of(context).padding.top,
                    bottom: 140,
                  ),
                  child: const TTLogoWidget(),
                ),
                Text(
                  'E-mail address',
                  style: St.body12500.copyWith(color: Cl.color666680),
                ),
                const SizedBox(height: 4),
                TTTextField(
                  controller: model.emailController,
                  onChanged: (v) => model.validate(),
                  isRequired: true,
                  textType: TextType.email,
                ),
                const SizedBox(height: 16),
                Text(
                  'Password',
                  style: St.body12500.copyWith(color: Cl.color666680),
                ),
                const SizedBox(height: 4),
                TTTextField(
                  obscureText: true,
                  controller: model.passwordController,
                  onChanged: (v) => model.validate(),
                  isRequired: true,
                  textType: TextType.password,
                ),
                const SizedBox(height: 24),
                buildContainer(),
                const SizedBox(height: 16),
                Text(
                  'Use 8 or more characters with a mix of letters, numbers & symbols.',
                  style: St.body12500.copyWith(
                    color: Cl.color666680,
                  ),
                ),
                const SizedBox(height: 60),
                TTButton.shadow(
                  onPressed: model.enable ? model.onGetStartedPressed : null,
                  text: 'Get started, it’s free!',
                ),
                const SizedBox(height: 120),
                Center(
                  child: Text(
                    'Do you have already an account?',
                    style: St.body14400.copyWith(color: Cl.colorFFFFFF),
                  ),
                ),
                const SizedBox(height: 20),
                TTButton(
                  onPressed: model.onSignInPressed,
                  text: 'Sign In',
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer() {
    return Row(
      children: [
        Container(
          height: 5,
          width: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(9),
              bottomLeft: Radius.circular(9),
            ),
            color: Cl.color353542,
          ),
        ),
        const SizedBox(width: 3),
        Container(
          height: 5,
          width: 80,
          color: Cl.color353542,
        ),
        const SizedBox(width: 3),
        Container(
          height: 5,
          width: 80,
          color: Cl.color353542,
        ),
        const SizedBox(width: 3),
        Container(
          height: 5,
          width: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(9),
              bottomRight: Radius.circular(9),
            ),
            color: Cl.color353542,
          ),
        ),
      ],
    );
  }
}
