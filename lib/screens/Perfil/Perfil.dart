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
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.lightGreen[300],
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
            ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                          padding: EdgeInsets.only(left: 10),

                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Container(
                                   padding: EdgeInsets.only(right: 5,bottom: 5),

                                   child: Image(
                                      image: new AssetImage("assets/images/guy.jpg"),
                                      height: 150,

                                    ),
                                ),

                                new Container(
                                    padding: EdgeInsets.only(right: 6,bottom: 5),
                                    child: Text(
                                      "Laboratorio: %s",
                                      style: new TextStyle(fontSize:12.0,
                                          color: const Color(0xFF000000),
                                          fontWeight: FontWeight.w200,
                                          fontFamily: "Roboto"),
                                    ),

                                ),

                                new Container(
                                    padding: EdgeInsets.only(right: 6,bottom: 5),
                                    child: Text(
                                        "Atividade: %s",
                                        style: new TextStyle(fontSize:12.0,
                                            color: const Color(0xFF000000),
                                            fontWeight: FontWeight.w200,
                                            fontFamily: "Roboto"),
                                      ),
                                    ),
                                  ]

                          ),
                      ),
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                                      new Container(
//                                        margin: EdgeInsets.all(10.0),
//                                        padding: EdgeInsets.all(10.0),

                                          child: Text(
                                            "NOME: %s",
                                            style: new TextStyle(fontSize:12.0,
                                                color: const Color(0xFF000000),
                                                fontWeight: FontWeight.w200,
                                                fontFamily: "Roboto"),
                                          ),

                                      ),
                                      new Container(
//                                          margin: EdgeInsets.all(10.0),
//                                          padding: EdgeInsets.all(10.0),
                                          child: Text(

                                            "PROFISSÃO: %S",
                                            style: new TextStyle(fontSize:12.0,
                                                color: const Color(0xFF000000),
                                                fontWeight: FontWeight.w200,
                                                fontFamily: "Roboto"),
                                          ),
                                      ),
                                      new Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            BottomAppBar(
                                            child: new Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      ),
                           ]
                      ),


                    ]
                ),


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