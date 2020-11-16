import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> altBaslik =
      List.generate(300, (index) => "Liste Elemanı Alt Başlık $index");
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listeNumaralari
            .map(
              (oAnkiEleman) => Column(
                children: <Widget>[
                  Container(
                    child: Card(
                      color: Colors.teal.shade100,
                      margin: EdgeInsets.all(10),
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.android),
                          radius: 10,
                        ),
                        title: Text("Başlık $oAnkiEleman"),
                        subtitle: Text(altBaslik[oAnkiEleman]),
                        trailing: Icon(Icons.add_circle),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                    height: 0,
                    indent: 20,
                  ),
                ],
              ),
            )
            .toList());
  }
}
/*
<Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.teal.shade100,
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.android),
                    radius: 10,
                  ),
                  title: Text("Mücahit Gökkaya"),
                  subtitle: Text("Öğrenci"),
                  trailing: Icon(Icons.add_circle),
                ),
              ),
            ),
            Divider(
              color: Colors.red,
              height: 0,
              indent: 20,
            ),
          ],
        ),
      ],
 */
