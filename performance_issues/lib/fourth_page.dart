import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FourthPage extends StatelessWidget {
  static const routeName = 'fourthPage';

  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (var i = 0; i < 200; i++) _buildListTile(i),
        ],
      ),
    );
  }

  Widget _buildListTile(int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/dicoding-academy.png'),
          ),
          SizedBox(width: 16),
          Text('item $i'),
        ],
      ),
    );
  }
}
