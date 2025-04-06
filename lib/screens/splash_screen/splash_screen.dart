import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:only_clicker/screens/game_screen/game_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hacker Clicker",
              style: TextStyle(fontSize: 35, color: Colors.green),
            ),
            CupertinoButton(
              child: Text("Start Game"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(builder: (context) => GameScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
