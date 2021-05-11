import 'package:flutter/cupertino.dart';
import 'package:flutter_shoes_app/app/login/login_screen.dart';
import 'package:flutter_shoes_app/app/main_navigatoion.dart';

import 'app/home/home_screen.dart';

class AppRouter {
  static final root = '/root';
  static final home = '/home';
  static final login = '/login';

  static Map<String, Widget Function(BuildContext)> appRouter(
      BuildContext context) {
    return {
      '/root': (context) => MainNavigation(),
      '/home': (context) => HomeScreen(),
      '/login': (context) => LoginScreen(),
    };
  }
}
