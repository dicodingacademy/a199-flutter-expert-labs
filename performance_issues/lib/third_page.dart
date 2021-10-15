import 'dart:ui';

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = 'thirdPage';

  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              for (var i = 0; i < 20; i++) _buildListTile(i),
            ],
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
        ],
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
            color: Colors.lightBlue,
          ),
          SizedBox(width: 16),
          Text('item $i'),
        ],
      ),
    );
  }
}
