import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.teal[100 * (index % 9)],
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                image: AssetImage("assets/images/mucahit.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
              border: Border.all(
                color: Colors.blue,
                width: 5,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal,
                  offset: Offset(10.0, 10.0),
                  blurRadius: 20.0,
                )
              ],
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Mücahit Gökkaya $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
          onTap: () => debugPrint("Mücahit Gökkaya $index tıklandı"),
          onDoubleTap: () =>
              debugPrint("Mücahit Gökkaya $index  çift tıklandı"),
          onLongPress: () => debugPrint("Mücahit Gökkaya $index uzun basıldı"),
        );
      },
    );
  }
}
/*
GridView.extent(
      maxCrossAxisExtent: 200,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 40,
      primary: false,
      children: <Widget>[
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
      ],
    );
 */
/*
GridView.count(
      crossAxisCount: 1,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 40,
      primary: false,
      children: <Widget>[
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.teal,
          child: Text("Mücahit Gökkaya"),
          alignment: Alignment.center,
        ),
      ],
    );
 */
