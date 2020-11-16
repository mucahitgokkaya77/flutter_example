import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon Hizmetleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("A butonu tıklandı"),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
            ),
            RaisedButton(
              child: Text("B butonu tıklandı"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BSayfasi(baslik)));
              },
            ),
            RaisedButton(
              child: Text("C butonu tıklandı"),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CSayfasi()));
              },
            ),
            RaisedButton(
              child: Text("D butonu tıklandı"),
              color: Colors.amber,
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DSayfasi()))
                    .then((popIleGeriDonme) {
                  debugPrint("Pop ile geri dönme $popIleGeriDonme");
                });
              },
            ),
            RaisedButton(
              child: Text("E butonu tıklandı"),
              color: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ESayfasi()));
              },
            ),
            RaisedButton(
              child: Text("Liste Sayfasına Git"),
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "/listeSayfasi");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int tiklanandeger;

  ListeDetay(this.tiklanandeger);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Detay Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste Elemanı ${tiklanandeger + 1} Sayfası"),
        )));
  }
}

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Sınıfı",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/detay/$index");
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Liste elemanı ${index + 1}"),
                ),
              ),
            );
          },
          itemCount: 60,
        ));
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A Sayfası",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslik;

  BSayfasi(this.gelenBaslik);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslik,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              gelenBaslik,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C Sayfası",
              style: TextStyle(fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Geri Dön"),
              color: Colors.red,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
              child: Text("A Sayfasına Git"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "D Sayfası",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "D Sayfası",
                  style: TextStyle(fontSize: 24),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Geri Dön Ve Veri Gönder"),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfası",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E Sayfası",
              style: TextStyle(fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/FPage");
              },
              color: Colors.red,
              child: Text("F ye git"),
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "F Sayfası",
              style: TextStyle(fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => GSayfasi()));
              },
              color: Colors.red,
              child: Text("G ye git"),
            ),
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "G Sayfası",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
