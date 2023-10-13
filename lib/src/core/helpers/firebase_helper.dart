import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

class FirebaseHelper {
  static Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
