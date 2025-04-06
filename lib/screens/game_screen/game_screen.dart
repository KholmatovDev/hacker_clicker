import 'dart:math';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:only_clicker/values/appcolors.dart';
import 'package:only_clicker/values/constants.dart';
import 'package:only_clicker/values/extensions.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> consoleElements = ["Enter something. . . ."];
  final controller = ScrollController();
  int count = 0;
  int level = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      appBar: AppBar(
        title: Text(
          "$count kb",
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.backColor,
        actions: [Container(width: 100, height: 100)],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 26, 26, 26),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white70, width: 7),
              ),
              child: PaddingX(
                ListView.builder(
                  controller: controller,
                  itemCount: consoleElements.length,
                  itemBuilder:
                      (context, index) => Text(
                        consoleElements[index],
                        style: TextStyle(color: Colors.green),
                      ),
                ),
              ).paddingAll(10),
            ),
            50.ph,
            GestureDetector(
              onTap: () {
                setState(() {
                  count += level;
                  final random = Random();
                  int randomNumber = random.nextInt(101);
                  consoleElements.add(commands[randomNumber]);
                });
                controller.jumpTo(controller.position.maxScrollExtent);
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreen,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Enter",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ).paddingHorizontal(35),
    );
  }
}
