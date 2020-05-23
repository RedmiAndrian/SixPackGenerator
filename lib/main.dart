import 'package:exercise/pages/bridge.dart';
import 'package:exercise/pages/burpees.dart';
import 'package:exercise/pages/finish.dart';
import 'package:exercise/pages/home.dart';
import 'package:exercise/pages/mainscreen.dart';
import 'package:exercise/pages/plank.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => Home(),
    '/mainscreen': (context) => MainScreen(),
    '/burpees': (context) => Burpees(),
    '/bridge': (context) => Bridge(),
    '/plank': (context) => Plank(),
    '/finish': (context) => Finish(),
  },
));





