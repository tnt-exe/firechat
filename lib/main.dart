import 'package:firechat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Firechat());

class Firechat extends StatelessWidget {
  const Firechat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
