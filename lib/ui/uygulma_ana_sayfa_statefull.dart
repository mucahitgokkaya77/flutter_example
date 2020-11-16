import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "Meterial App Title",
      home: MyHomePage(title: "My Page Home"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _SayacDegeriniArttir();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _SayacDegeriniArttir,
              child: Text("Arttır"),
              color: Colors.red,
            ),
            Text(
              "${widget.sayac}",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: widget.sayac <= 0 ? Colors.red : Colors.blue),
            ),
            RaisedButton(
              onPressed: _SayacDegeriniAzalt,
              child: Text("Azalt"),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  void _SayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("${widget.sayac}");
    });
  }

  void _SayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("${widget.sayac}");
    });
  }
}
