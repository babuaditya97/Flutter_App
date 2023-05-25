import 'package:flutter/material.dart';

/// Flutter code sample for [Switch].

void main() => runApp(const AurisApp());

class AurisApp extends StatelessWidget {
  const AurisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AURIS', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("graphics/Bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            height: 600,
            width: 600,
            // position the button on the bottom right corner
            color: null,
            child: const Align(
                alignment: Alignment.bottomCenter, child: SwitchClass()),
          ),
          Text(
            'Sound event detection',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
        ]),
      ),
    );
  }
}

class SwitchClass extends StatefulWidget {
  const SwitchClass({super.key});
  @override
  State<SwitchClass> createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      // set active color to garmin green
      activeColor: Color.fromARGB(172, 125, 245, 12),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
