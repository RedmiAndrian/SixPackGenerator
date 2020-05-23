import 'package:flutter/material.dart';

class Bridge extends StatefulWidget {
  @override
  _BridgeState createState() => _BridgeState();
}

class _BridgeState extends State<Bridge> {
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
                "assets/bridge-exercise-data.gif",
                alignment: Alignment.topCenter,
                height: 200.0,
                width: 200.0,
                      ),
          ),
          SizedBox(height: 20),
          Text(
            'Bridges',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Do this 20 times.',
            style: TextStyle(
              fontSize: 25,
            )
          ),
          SizedBox(height: 20),
          RaisedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/plank');
            }, 
            icon: Icon(Icons.navigate_next), 
            label: Text('NEXT')
            )
        ],),
    ),
    );
  }
}