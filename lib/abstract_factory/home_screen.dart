import 'package:design_pattern/abstract_factory/abstract_factory.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: SizedBox(),
          ),
          AbstractFactoryImplementation.buildButton(context, "Click", () {
            print("Hello!!");
          }),
          AbstractFactoryImplementation.buildIndicator(context),
          AbstractFactoryImplementation.buildText(context, "Text"),
        ],
      ),
    );
  }
}
