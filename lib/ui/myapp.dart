import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ilk/ui/resim_ve_buton_turleri.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.cyan,
      ),
      home: new Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Dersleri",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("SİKTİR GİT");
            },
            //backgroundColor: Colors.green,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 28.0,
            ),
          ),
          body: ResimVeButonTurleri()),
    );
  }
}
