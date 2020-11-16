import 'package:flutter/material.dart';
import 'package:flutter_app_ilk/ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElemanlari = settings.name.split("/");
      if (pathElemanlari[1] == "detay") {
        return MaterialPageRoute(
            builder: (context) => ListeDetay(int.parse(pathElemanlari[2])));
      }
    },

    routes: {
      '/': (context) => NavigasyonIslemleri(),
      '/APage': (context) => ASayfasi(),
      '/CPage': (context) => CSayfasi(),
      '/DPage': (context) => DSayfasi(),
      '/EPage': (context) => ESayfasi(),
      '/FPage': (context) => FSayfasi(),
      '/GPage': (context) => GSayfasi(),
      '/listeSayfasi': (context) => ListeSinifi()
    },
    title: "Uygulama Editörleri",
    theme: ThemeData(primarySwatch: Colors.orange),
    //home: NavigasyonIslemleri(),
  ));
}
