import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'pages/homeAnimals.dart';
import 'pages/transports.dart';
import 'pages/musicalinstruments.dart';
import 'pages/wildAnimals.dart';

void main() {
  runApp(const SoundTouchApp());
}

class SoundTouchApp extends StatelessWidget {
  const SoundTouchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      const HomeAnimals(),
      const WildAnimals(),
      const MusicalItems(),
      const TransportItems(),
    ];

    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Aniq chiqib ketishni xohlaysizmi?'),
            actions: <Widget>[
              TextButton(
                child: const Text("Yo'q"),
                onPressed: () => Navigator.pop(context, false),
              ),
              TextButton(
                child: const Text("Ha"),
                onPressed: () => Navigator.pop(context, true),
              ),
            ],
          ),
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: _pages.elementAt(_selectedIndex), //New
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue.shade900,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          currentIndex: _selectedIndex,
          onTap: _onTappedItem,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/dog.svg',
                color: Colors.white,
                width: 30.0,
                height: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/elephant.svg',
                color: Colors.white,
                width: 30.0,
                height: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/guitar.svg',
                color: Colors.white,
                width: 30.0,
                height: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/transport.svg',
                color: Colors.white,
                width: 30.0,
                height: 30.0,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
