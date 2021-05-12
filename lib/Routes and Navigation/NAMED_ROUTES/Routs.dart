import 'package:flutter/material.dart';
import 'package:practising_app/Routes%20and%20Navigation/ONTHEFLY_ROUTES/2nd_page.dart';
import 'package:practising_app/Routes%20and%20Navigation/ONTHEFLY_ROUTES/Home.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Home1(),
        '/second': (context) => SecondPage(),
};
