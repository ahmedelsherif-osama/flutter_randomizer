import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min, max;
  const RandomizerPage({
    Key? key,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    widget.min;
    widget.max;

    return Scaffold(
      appBar: AppBar(
        title: Text("Randomizer"),
      ),
      body: Center(
        child: Text(
          _generatedNumber?.toString() ?? 'Generate a number',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("Generate"),
          onPressed: () {
            setState(() {
              _generatedNumber = widget.min +
                  randomGenerator.nextInt(widget.max + 1 - widget.min);
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
