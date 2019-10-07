import 'package:flutter/material.dart';
import 'screens/Home/Home.dart';
import 'screens/Login/Login.dart';
import 'screens/Perfil/Perfil.dart';


class FirebaseAuthAppRoutes {
  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => HomePage(),
    "/login": (BuildContext context) => LoginPage(),
    "/perfil": (BuildContext context) => PerfilPage(),
  };
}
