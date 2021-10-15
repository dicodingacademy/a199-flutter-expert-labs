import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = 'secondPage';

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _animationController.forward(from: 0);
        },
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.rotate(
              angle: _animationController.value * pi * 2,
              child: ListView(
                children: [
                  for (var i = 0; i < 1000; i++) _buildListTile(i),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildListTile(int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.lightGreen,
          ),
          SizedBox(width: 16),
          Text('item $i'),
        ],
      ),
    );
  }
}
