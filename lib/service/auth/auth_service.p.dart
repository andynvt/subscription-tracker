import 'package:flutter/material.dart';

AuthService get authSrv => AuthService.shared();

class AuthService extends ChangeNotifier {
  static AuthService? _sInstance;

  AuthService._();

  factory AuthService.shared() {
    return _sInstance ??= AuthService._();
  }
}
