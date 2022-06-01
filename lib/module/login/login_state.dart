part of login;

class _LoginViewState extends TTState<_LoginModel, _LoginView> {
  @override
  Widget buildWithModel(BuildContext context, _LoginModel model) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('text'),
      ),
    );
  }
}
