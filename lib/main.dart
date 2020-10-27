import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  String _value = "";

  void onChange(String value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(Icons.av_timer), onPressed: () => onChange("Click Me")),
        new IconButton(icon: new Icon(Icons.add), onPressed: () => onChange("Click Me")),
        new IconButton(icon: new Icon(Icons.ac_unit_outlined), onPressed: () => onChange("Click Me"))

      ],


      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}