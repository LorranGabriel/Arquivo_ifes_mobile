import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,

        child: Scaffold(

          appBar: AppBar(

            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),child:Text('Inicio', style: TextStyle(fontSize: 10))),
                Tab(icon: Icon(Icons.bubble_chart),child:Text('Labs', style: TextStyle(fontSize: 10))),
                Tab(icon: Icon(Icons.collections_bookmark ),child:Text('Projetos', style: TextStyle(fontSize: 8))),
                Tab(icon: Icon(Icons.widgets),child:Text('Noticias', style: TextStyle(fontSize: 8))),
                Tab(icon: Icon(Icons.local_post_office),child:Text('Chat', style: TextStyle(fontSize: 9))),
              ],
            ),
            title: Text('Arquivo Ifes'),
          ),
          body: TabBarView(
            children:
            [
            new Container(
              child: new Stack(
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

                                            new RaisedButton(key:null,
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

                                            new RaisedButton(key:null,
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
            ),
            new Container(
              color: Colors.greenAccent,
              child: Center(child: Text('Hi from home', style: TextStyle(color: Colors.white),),),
            ),
            new Container(
            color: Colors.blueAccent,
            child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
            ),
            new Container(
              color: Colors.blueAccent,
              child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
            ),
            new Container(
              color: Colors.blueAccent,
              child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
            ),
          ]
          ),
        ),
      ),
    );
  }
}