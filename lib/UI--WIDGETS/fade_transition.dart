import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimBuilder extends StatefulWidget {
  @override
  _AnimBuilderState createState() => _AnimBuilderState();
}

class _AnimBuilderState extends State<AnimBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: const Center(
            child: Text('upama'),
          ),
        ),
        builder: (BuildContext context, Widget child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        });
  }
}



