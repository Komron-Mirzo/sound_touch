import 'package:flutter/material.dart';
import 'customButton.dart';

class MusicalItems extends StatefulWidget {
  const MusicalItems({
    Key? key,
  }) : super(key: key);

  @override
  State<MusicalItems> createState() => _MusicalItemsState();
}

class _MusicalItemsState extends State<MusicalItems> {
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
                customRoot: 'music/',
                customName: 'accordeon',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'darbuka',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'drum',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'guitar',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'harmonica',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'harp',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'horn',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'lute',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'piano',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'shakers',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'violin',
              ),
              CustomButton(
                customRoot: 'music/',
                customName: 'xylophone',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
