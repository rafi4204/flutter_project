import 'package:flutter_template/data/preferences/auth_preferences.dart';
import 'package:injectable/injectable.dart';
@LazySingleton()
class UserLocalDataSource {
  final AuthPreferences authPreferences;

  UserLocalDataSource(this.authPreferences);

  void saveToken(String token) async {
    await authPreferences.saveAccessToken(token);
  }
}
