import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                "assets/crunches.gif",
                alignment: Alignment.topCenter,
                height: 200.0,
                width: 200.0,
                      ),
          ),
          SizedBox(height: 20),
          Text(
            'Crunches',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Do this 16 times.',
            style: TextStyle(
              fontSize: 25,
            )
          ),
          SizedBox(height: 20),
          RaisedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/burpees');
            }, 
            icon: Icon(Icons.navigate_next), 
            label: Text('NEXT')
            )
        ],),
    ),
    );
  }
}