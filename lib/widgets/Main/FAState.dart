import 'package:flutter/material.dart';
import 'package:arquivo_ifes/screens/Splash/SplashScreen.dart';
import 'package:arquivo_ifes/routes.dart';

class arquivoIfes extends StatefulWidget {
  @override
  _FirebaseAuthAppState createState() => _FirebaseAuthAppState();
}

class _FirebaseAuthAppState extends State<arquivoIfes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: FirebaseAuthAppRoutes().routes,
    );
  }
}
