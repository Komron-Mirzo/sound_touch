import 'package:flutter/material.dart';
import 'customButton.dart';

class WildAnimals extends StatefulWidget {
  const WildAnimals({
    Key? key,
  }) : super(key: key);

  @override
  State<WildAnimals> createState() => _WildAnimalsState();
}

class _WildAnimalsState extends State<WildAnimals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.3,
            children: const [
              CustomButton(
                customRoot: 'wild/',
                customName: 'bear',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'camel',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'crocodile',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'elephant',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'snake',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'dolphin',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'lion',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'monkey',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'penguin',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'tiger',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'ukki',
              ),
              CustomButton(
                customRoot: 'wild/',
                customName: 'wolf',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
