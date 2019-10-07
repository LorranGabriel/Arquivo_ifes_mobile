import 'package:flutter/material.dart';
import 'package:arquivo_ifes/Constants.dart';
import '../../util/Navigator.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice){
      if(choice == Constants.Perfil){
        FirebaseAuthAppNavigator.goToPerfil(context);
        print('Perfil');
      }else if(choice == Constants.Configuracoes){
        print('Configurações');
      }else if(choice == Constants.Sair){
        FirebaseAuthAppNavigator.goToLogin(context);
        print('Sair');
      }

    }
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.green,
        accentColor: Colors.green[800],
      ),
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
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: choiceAction,

              itemBuilder: (BuildContext context){
                  return Constants.choices.map((String choice){
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: TabBarView(
              children:
              [
                new Container(
                  child: new Stack(
                      children: <Widget>[
                        new Center(
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                'Body',
                              ),
                            ],
                          ),
                        ),
                      ]

                  ),
                ),//Inicial
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
                ), //Labs
                new Container(
                  color: Colors.blueAccent,
                  child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
                ),//Projetos
                new Container(
                  color: Colors.blueAccent,
                  child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
                ),//Noticias
                new Container(
                  color: Colors.blueAccent,
                  child: Center(child: Text('Hi from Hospital', style: TextStyle(color: Colors.white),),),
                ),//Chat
              ]
          ),
        ),
      ),

    );
  }
}
