import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.customName,
    required this.customRoot,
  }) : super(key: key);

  final String customName;
  final String customRoot;

  static AudioCache player =
      AudioCache(prefix: 'assets/audio/', fixedPlayer: AudioPlayer());

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int customPopNumber = 1;
  void popImageNumberFunction() {
    setState(() {
      customPopNumber = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: TextButton(
        child: Image.asset(
            'assets/png/${widget.customRoot}${widget.customName}.png'),
        onPressed: () {
          CustomButton.player.play(
            '${widget.customRoot}${widget.customName}$customPopNumber.mp3',
          );
          popImageNumberFunction();
          showGeneralDialog(
            context: context,
            pageBuilder: (BuildContext context, Animation animation,
                Animation secondAnimation) {
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      CustomButton.player.fixedPlayer?.stop();
                    },
                    child: Image.asset(
                        'assets/jpg/${widget.customRoot}${widget.customName}$customPopNumber.jpg'),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
