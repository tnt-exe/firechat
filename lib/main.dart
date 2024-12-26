import 'package:firebase_core/firebase_core.dart';
import 'package:firechat/firebase_options.dart';
import 'package:firechat/screens/chat_screen.dart';
import 'package:firechat/screens/login_screen.dart';
import 'package:firechat/screens/register_screen.dart';
import 'package:firechat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Firechat());
}

class Firechat extends StatelessWidget {
  const Firechat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
