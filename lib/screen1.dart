import 'package:flutter/material.dart';
import 'package:flutter_routing/screen2.dart';
import 'package:flutter_routing/screen3.dart';
import 'package:flutter_routing/screen4.dart';
import 'package:flutter_routing/screen5.dart';

class Screen1 extends StatefulWidget {
  final String route = "/screen_1";
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  String _selectedItem = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Screen One")),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  /* Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Screen2()));*/
                  //Navigator.of(context).pushReplacementNamed(Screen2().route);
                  Navigator.of(context).pushNamed(Screen2().route);
                },
                child: Text(
                  "Screen 2",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.brown,
              ),
              FlatButton(
                onPressed: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Screen3()));*/
                  Navigator.of(context).pushNamed(Screen3().route);
                },
                child: Text(
                  "Screen 3",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
              ),
              FlatButton(
                onPressed: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Screen4()));*/
                  Navigator.of(context).pushNamed(Screen4().route);
                },
                child: Text(
                  "Screen 4",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Screen5()));*/
                  Navigator.of(context).pushNamed(Screen5().route);
                },
                child: Text(
                  "Screen 5",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.teal,
              ),

              //for bottomSheet,,,,,,,,,,,,,
              /* FlatButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 300,
                        decoration: BoxDecoration(color: Colors.blue),
                      );
                    },
                    isDismissible: true,
                    barrierColor: Colors.black87,
                  );
                },
                child: Text("Bottom Sheet"),
                color: Colors.blue,
              )*/
              /*FlatButton(
                onPressed: (){
                  showModalBottomSheet(context: context,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                      builder: (context){
                    return Container(
                      height: 200,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade50,
                        image: const DecorationImage(
                          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                          borderRadius: BorderRadius.circular(12),
                      ),

                    );
                    TextField(

                    );
                  },
                    barrierColor: Colors.lime.shade50
                  );
                },
                child: Text(
                  "Bottom Sheet",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purpleAccent,
              )*/

              FlatButton(
                onPressed: () {
                  showModalBottomSheet(context: context, builder: (context){
                    return Container(
                      color: Color(0xFF737373),
                      height: 180,
                      child: Container(
                        child: _buildBottomNavigationMenu(),
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10),
                            topRight: const Radius.circular(10),
                          ),
                        ),
                      ),
                    );

                  });
                },
                child: Text(
                  "Bottom Sheet Button",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple,
              )
            ],
          ),
        ),
      );

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Flutter'),
          onTap: () => _selectItem('Flutter'),
        ),
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Android'),
          onTap: () => _selectItem('Android'),
        ),
        ListTile(
          leading: Icon(Icons.assessment),
          title: Text('Kotlin'),
          onTap: () => _selectItem('Kotlin'),
        ),
      ],
    );
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
