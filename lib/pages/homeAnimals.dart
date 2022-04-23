import 'package:flutter/material.dart';
import 'customButton.dart';

class HomeAnimals extends StatefulWidget {
  const HomeAnimals({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeAnimals> createState() => _HomeAnimalsState();
}

class _HomeAnimalsState extends State<HomeAnimals> {
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
                customName: 'dog',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'cat',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'chicken',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'cow',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'donkey',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'goat',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'goz',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'gulgula',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'horse',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'pig',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'sheep',
                customRoot: 'domestic/',
              ),
              CustomButton(
                customName: 'chick',
                customRoot: 'domestic/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
