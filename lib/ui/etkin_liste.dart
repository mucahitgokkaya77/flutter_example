import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Ogrenci> tumOgrenciBilgileri = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              margin: EdgeInsets.all(5),
              color: Colors.blue,
              height: 4,
            );
          } else {
            return Divider(
              color: Colors.orange.shade900,
            );
          }
        },
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
              color: index % 2 == 0
                  ? Colors.orange.shade200
                  : Colors.orange.shade400,
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text(tumOgrenciBilgileri[index]._isim),
                subtitle: Text(tumOgrenciBilgileri[index]._aciklama),
                trailing: Icon(Icons.add_circle),
                onTap: () {
                  debugPrint(tumOgrenciBilgileri[index].toString());
                  toastMesaj(index, false);
                  alertDialog(context, index);
                },
                onLongPress: () {
                  debugPrint("Uzun tıklandı $index");
                  toastMesaj(index, true);
                  alertDialog(context, index);
                },
              ));
        });
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciBilgileri = List.generate(
        300,
        (index) => Ogrenci("Öğrenci $index Adı", "Öğrenci $index Açıklaması",
            index % 2 == 0 ? true : false));
  }

  void toastMesaj(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? "Uzun Basıldı ${tumOgrenciBilgileri[index].toString()}"
            : "Tek Basıldı ${tumOgrenciBilgileri[index].toString()}",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialog(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Başlık"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Ogreci adı= ${tumOgrenciBilgileri[index]._isim}"),
                  Text(
                      "Öğrenci Açıklaması= ${tumOgrenciBilgileri[index]._aciklama}")
                ],
              ),
            ),
            actions: <Widget>[
              // ignore: deprecated_member_use
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text("Tamam"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("Kapat"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Öğreci Adı :$_isim  Öğrenci Açıklama:$_aciklama";
  }
}
