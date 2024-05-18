import 'package:flutter/material.dart';

class GestureScreen extends StatefulWidget {
  const GestureScreen({super.key});

  @override
  State<GestureScreen> createState() => _GestureScreenState();
}

class _GestureScreenState extends State<GestureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        print('tapped');
      },
      onDoubleTap: () {
        print('double tapped');
      },
      child: const Center(
        child: Text('hello'),
      ),
    ));
  }
}
