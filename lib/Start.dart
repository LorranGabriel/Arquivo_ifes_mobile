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
        primaryColor: const Color(0xFF6abf14),
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
          title: new Text('Arquivo Ifes'),
          ),
        body:
          new Stack(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                        fit:BoxFit.fill,
                        ),
    
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.all(24.0),
                              ),
    
                              new RaisedButton(key:null, onPressed:buttonPressed,
                                color: const Color(0xFFe0e0e0),
                                child:
                                  new Text(
                                  "BUTTON 6",
                                    style: new TextStyle(fontSize:35.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                                  )
                                ),
    
                              new RaisedButton(key:null, onPressed:buttonPressed,
                                color: const Color(0xFFe0e0e0),
                                child:
                                  new Text(
                                  "BUTTON 5",
                                    style: new TextStyle(fontSize:35.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                                  )
                                )
                            ]
    
                          )
                        ]
    
                      )
                    ]
    
                  )
                ]
    
              )
            ]
    
          ),
    
      );
    }
    void buttonPressed(){}
    
}
