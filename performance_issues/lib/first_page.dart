import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static const routeName = 'firstPage';

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (var i = 0; i < 1000; i++) _buildListTile(i),
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
            color: Colors.redAccent,
          ),
          SizedBox(width: 16),
          Text('item $i'),
        ],
      ),
    );
  }
}
