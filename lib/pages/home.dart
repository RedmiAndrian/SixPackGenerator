import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome To Exercise App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
                child: Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.all(15),
                color: Colors.grey[200],
                child: FlutterLogo(
                  size: 80,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Welcome to Six Pack Generator',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Press this button to start generating it!',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/mainscreen');
              }, 
              icon: Icon(Icons.flag), 
              label: Text('START')
              ),
          ],
        ),
      ),
    );
  }
}