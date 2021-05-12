import 'package:flutter/material.dart';

class AdvAnimCon extends StatefulWidget {
  @override
  _AdvAnimConState createState() => _AdvAnimConState();
}

class _AdvAnimConState extends State<AdvAnimCon>
    with SingleTickerProviderStateMixin {
  bool selected = false;
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: AnimatedBuilder(
        animation: _controller.view,
        builder: (context, child) {
          return Transform.rotate(angle: 180);
        },
        child: Container(
          width: selected? 200:100,
          height: selected? 300:200,
          color: selected ? Colors.amber : Colors.deepPurple,
        alignment: selected ? AlignmentDirectional.topEnd : Alignment.center,
        
        
        child: const FlutterLogo(size: 75),
        ),
      ),
    ));
  }
}
