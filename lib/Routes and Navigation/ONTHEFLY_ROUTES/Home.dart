import 'package:flutter/material.dart';
import 'package:practising_app/Routes%20and%20Navigation/ONTHEFLY_ROUTES/2nd_page.dart';

class Home1 extends StatelessWidget {
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
