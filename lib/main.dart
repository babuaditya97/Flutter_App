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
        appBar: AppBar(title: const Text('AURIS')),
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            color: null,
            child: const Align(
                alignment: Alignment.bottomCenter, child: SwitchClass()),
          ),
        ),
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
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
