// import 'package:firebase_remote_config/firebase_remote_config.dart';
//
// class AppRemoteConfig {
//   static Future<void> initRemote() async {
//     var remoteConfig = await RemoteConfig.instance;
//     bool updated = await remoteConfig.activateFetched();
//     print(remoteConfig.getString("app_name"));
//     if (updated) {
//       // the config has been updated, new parameter values are available.
//     } else {
//       // the config values were previously updated.
//     }
//   }
// }
