import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app/config/remote_config.dart';
import 'package:flutter_shoes_app/app/login/login_screen.dart';
import 'package:flutter_shoes_app/app_router.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // AppRemoteConfig.initRemote();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRouter.appRouter(context),
      initialRoute: AppRouter.login,
      home: LoginScreen(),
    );
  }
}
