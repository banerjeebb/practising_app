import 'package:flutter/material.dart';


class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Text('HOME PAGE'),
            RaisedButton(
              child: Text('go to Next page'),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
