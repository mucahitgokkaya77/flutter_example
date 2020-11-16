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
                                  "https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search-v2_297x176.jpg"),
                          Text("Fadeinİmages"),
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
                          FlutterLogo(
                            size: 100,
                            textColor: Colors.black,
                            style: FlutterLogoStyle.horizontal,
                          ),
                          Text("Flutter Logo")
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
                          Expanded(
                            child: Placeholder(
                              color: Colors.black,
                              strokeWidth: 6,
                            ),
                          ),
                          Text("Placeholder widget")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Mücahit Gökkaya"),
                    color: Colors.orange.shade600,
                    textColor: Colors.black,
                    elevation: 12,
                    onPressed: () => debugPrint("Fat Arrowlu fonksiyon"),
                  ),
                  RaisedButton(
                      child: Text("Sermin Deveci"),
                      color: Colors.orange.shade400,
                      textColor: Colors.black,
                      elevation: 12,
                      onPressed: () {
                        debugPrint("Normal Lambda Expression");
                        debugPrint("İkinci Satır");
                      }),
                  RaisedButton(
                      child: Text("Yasin Gökkaya"),
                      color: Colors.orange.shade200,
                      textColor: Colors.black,
                      elevation: 12,
                      onPressed: () {
                        cokUzunMethod();
                      }),
                  RaisedButton(
                    child: Text("Selver Gökkaya"),
                    color: Colors.orange.shade50,
                    textColor: Colors.black,
                    elevation: 12,
                    onPressed: cokUzunMethod,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

void cokUzunMethod() {
  debugPrint("Çok uzun Method");
}
