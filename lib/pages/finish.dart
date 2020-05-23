import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
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
          Text(
            'The Session is finish!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            )
          ),
          SizedBox(height: 20),
          Text(
            'Do this everyday and you will gain six pack.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
                "assets/momo.jpg",
                alignment: Alignment.topCenter,
                height: 200.0,
                width: 200.0,
                      ),
        ],
    ),
    ),
  );
  }
}