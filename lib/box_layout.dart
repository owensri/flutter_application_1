import 'package:flutter/material.dart';

class answer1 extends StatefulWidget {
  const answer1({super.key});

  @override
  State<answer1> createState() => _answer1State();
}

class _answer1State extends State<answer1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}