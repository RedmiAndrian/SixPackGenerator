import 'package:flutter/material.dart';
import 'dart:async';

class Plank extends StatefulWidget {
  @override
  _PlankState createState() => _PlankState();
}

class _PlankState extends State<Plank> {

Timer _timer;
int _start = 30;

void startTimer() {
  const oneSec = const Duration(seconds: 1);
  _timer = new Timer.periodic(
    oneSec,
    (Timer timer) => setState(
      () {
        if (_start < 1) {
          timer.cancel();
        } else {
          _start = _start - 1;
        }
      },
    ),
  );
}

@override
void dispose() {
  _timer.cancel();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Six Pack Generator',
          style: TextStyle(
            fontSize: 20
        )
      ),
      backgroundColor: Colors.blue[800],
      centerTitle: true,
    ),
    backgroundColor: Colors.grey[200],
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[ 
          Align(
            alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/plank.png",
                alignment: Alignment.topCenter,
                height: 200.0,
                width: 200.0,
                      ),
          ),
          SizedBox(height: 20),
          Text(
            'Plank',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Do this for 30 seconds.',
            style: TextStyle(
              fontSize: 25,
            )
          ),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              startTimer();
            },
            child: Text('START')
            ),
            SizedBox(height: 20),
            Text(
              '$_start',
              style: TextStyle(
                fontSize: 25,
              ) 
            ),
            SizedBox(height: 20),
          RaisedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/finish');
            }, 
            icon: Icon(Icons.navigate_next), 
            label: Text('NEXT')
            )
        ],),
    ),
    );
  }  
}