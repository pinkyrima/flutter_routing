import 'package:flutter/material.dart';
import 'package:flutter_routing/screen1.dart';
import 'package:flutter_routing/screen2.dart';
import 'package:flutter_routing/screen3.dart';
import 'package:flutter_routing/screen5.dart';

class Screen4 extends StatelessWidget {
  final String route = "/screen_4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Screen Four")),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Screen1().route);
              },
              child: Text("Screen 1",style: TextStyle(color: Colors.white),),
              color: Colors.brown,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Screen2().route);
              },
              child: Text("Screen 2",style: TextStyle(color: Colors.white),),
              color: Colors.purple,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Screen3().route);
              },
              child: Text("Screen 3",style: TextStyle(color: Colors.white),),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Screen5().route);
              },
              child: Text("Screen 5",style: TextStyle(color: Colors.white),),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
