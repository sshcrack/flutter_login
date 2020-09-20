import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String username;
  final String password;

  LoginData({
    @required this.name,
    @required this.username,
    @required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($username, $name, $password)';
  }

  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name && password == other.password;
    }
    return false;
  }

  int get hashCode => hash2(name, password);
}
