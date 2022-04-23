import 'package:flutter/material.dart';
import 'customButton.dart';

class TransportItems extends StatefulWidget {
  const TransportItems({
    Key? key,
  }) : super(key: key);

  @override
  State<TransportItems> createState() => _TransportItemsState();
}

class _TransportItemsState extends State<TransportItems> {
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
                customRoot: 'transport/',
                customName: 'airplane',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'bus',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'car',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'eks',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'helicopter',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'moto',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'rocket',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'ship',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'tank',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'train',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'ufo',
              ),
              CustomButton(
                customRoot: 'transport/',
                customName: 'zil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
