import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  static const routeName = 'fifthPage';

  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            MyMovingBox(label: 'A', curve: Curves.linear),
            MyMovingBox(label: 'B', curve: Curves.easeOutCubic),
          ],
        ),
      ),
    );
  }
}

class MyMovingBox extends StatefulWidget {
  final String label;
  final Curve curve;

  const MyMovingBox({
    Key? key,
    required this.label,
    required this.curve,
  }) : super(key: key);

  @override
  _MyMovingBoxState createState() => _MyMovingBoxState();
}

class _MyMovingBoxState extends State<MyMovingBox> {
  bool _isUp = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _isUp = !_isUp;
            });
          },
          child: Text(widget.label),
        ),
        Expanded(
          child: TweenAnimationBuilder<AlignmentGeometry>(
            tween: AlignmentTween(
              begin: _isUp ? Alignment.bottomCenter : Alignment.topCenter,
              end: _isUp ? Alignment.topCenter : Alignment.bottomCenter,
            ),
            duration: const Duration(milliseconds: 500),
            curve: widget.curve,
            child: Container(
              color: Colors.black,
              width: 50,
              height: 50,
            ),
            builder: (context, alignment, child) {
              return Align(
                alignment: alignment,
                child: child,
              );
            },
          ),
        ),
      ],
    );
  }
}
