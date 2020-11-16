import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
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
              debugPrint("FAB TIKLANDI");
            },
            //backgroundColor: Colors.green,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 28.0,
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.red[100],
                    child: Text(
                      "D",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.red[200],
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.red[300],
                    child: Text(
                      "R",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(2),
                    color: Colors.red[400],
                    child: Text(
                      "T",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[200],
                child: Text(
                  "E",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[300],
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[400],
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[500],
                child: Text(
                  "L",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[600],
                child: Text(
                  "E",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(2),
                color: Colors.red[700],
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
                margin: EdgeInsets.all(2),
                color: Colors.red[800],
                child: Text(
                  "İ",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          )),
    ),
  );
}
