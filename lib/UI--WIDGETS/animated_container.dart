import 'package:flutter/material.dart';

class AnimCon extends StatefulWidget {
  @override
  _AnimConState createState() => _AnimConState();
}

class _AnimConState extends State<AnimCon> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
          child: AnimatedContainer(
        width: selected ? 120 : 300,
        height: selected ? 400 : 200,
        color: selected ? Colors.amber : Colors.deepPurple,
        alignment: selected ? AlignmentDirectional.topEnd : Alignment.center,
        duration: Duration(seconds: 2),
        curve: Curves.bounceOut,
        child: const FlutterLogo(size: 75),
      )),
    );
  }
}



