import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFF4caf50),
        accentColor: const Color(0xFF4caf50),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Name'),
          ),
        body:
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(key:null, onPressed:buttonPressed,
                        color: const Color(0xFFe0e0e0),
                        child:
                          new Text(
                          "Entrar como Visitante",
                            style: new TextStyle(fontSize:12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                          )
                        ),
    
                      new Padding(
                        padding: const EdgeInsets.all(24.0),
                      )
                    ]
    
                  )
                ]
    
              ),
    
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  )
                ]
    
              ),
    
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                  "E-mail: ",
                    style: new TextStyle(fontSize:29.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
    
                  new TextField(
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  )
                ]
    
              ),
    
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                  "Senha: ",
                    style: new TextStyle(fontSize:29.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
    
                  new TextField(
                    style: new TextStyle(fontSize:14.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  )
                ]
    
              ),
    
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(key:null, onPressed:buttonPressed,
                    color: const Color(0xFFe0e0e0),
                    child:
                      new Text(
                      "Entrar",
                        style: new TextStyle(fontSize:21.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                      )
                    )
                ]
    
              ),
    
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
              )
            ]
    
          ),
    
      );
    }
    void buttonPressed(){}
    
}
