import 'package:flutter/material.dart';
import '../../util/Navigator.dart';


class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override

  Widget build(BuildContext context) {

   return new MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       // Define the default brightness and colors.
       primaryColor: Colors.green,
       accentColor: Colors.green[800],
     ),

     home: new Scaffold(

       appBar: AppBar(

         title: Text('Perfil'),

       ),

        body: Container(
           padding: const EdgeInsets.all(15.0),

           child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      MaterialButton(
                        height: 40.0,
                        minWidth: 50.0,
                        color: Colors.green[600],
                        textColor: Colors.white70,
                        child: new Text("Voltar"),
                        onPressed: () {
                          FirebaseAuthAppNavigator.goToHome(context);
                        },
                        splashColor: Colors.greenAccent,
                      ),
                    ]

                ),

                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Image(
                              image: new AssetImage("assets/images/guy.jpg"),
                              height: 150,

                            ),

                            new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
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
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new BottomAppBar(
                                    child: new Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[

                                        Material(
                                          // needed
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {FirebaseAuthAppNavigator.goToHome(context);}, // needed
                                            child: Image(
                                              image: new AssetImage("assets/images/git.png"),
                                              height: 30,

                                            ),
                                          ),
                                        ),
                                        Material(
                                          // needed
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {FirebaseAuthAppNavigator.goToHome(context);}, // needed
                                            child: Image(
                                              image: new AssetImage("assets/images/linkedin.png"),
                                              height: 30,

                                            ),
                                          ),
                                        ),
                                        Material(
                                          // needed
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {FirebaseAuthAppNavigator.goToHome(context);}, // needed
                                            child: Image(
                                              image: new AssetImage("assets/images/lattes.png"),
                                              height: 30,

                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ]

                            )
                          ]

                      )
                    ]

                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                )
              ]

           ),

        ),
     ),
   );
  }

  void buttonPressed(){
    FirebaseAuthAppNavigator.goToHome(context);
  }

}