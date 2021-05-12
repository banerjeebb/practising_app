import 'package:flutter/material.dart';
import 'package:practising_app/Routes%20and%20Navigation/ONTHEFLY_ROUTES/Home.dart';
import 'package:practising_app/UI--WIDGETS/sliver_appbar.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Text('SECOND PAGE'),
            RaisedButton(
              child: Text('go to hOME page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
