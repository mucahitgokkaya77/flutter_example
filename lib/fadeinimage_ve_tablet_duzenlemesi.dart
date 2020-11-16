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
              debugPrint("SİKTİR GİT");
            },
            //backgroundColor: Colors.green,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
              size: 28.0,
            ),
          ),
          body: Column(
            children: <Widget>[
              Text(
                "RESİM VE BUTON TÜRLERİ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset("assets/images/mucahit.jpg"),
                            Text("Asset İmage"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.network(
                                "https://img.fanatik.com.tr/img/75/740x418/5c2285c266a97c512d9ac82f.jpg"),
                            Text("Network İmage"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                              backgroundColor: Colors.orange,
                              radius: 30,
                              foregroundColor: Colors.cyan,
                            ),
                            Text("Circle Avatar"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FadeInImage.assetNetwork(
                                placeholder: "assets/images/loading.gif",
                                image:
                                    "https://img.fanatik.com.tr/img/75/740x418/5c2285c266a97c512d9ac82f.jpg"),
                            Text("Fadeinİmage"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ),
  );
}
