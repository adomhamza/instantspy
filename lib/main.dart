import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
      myurl: Uri.base.toString(),
      para1: Uri.base.queryParameters["code"].toString()));
}

class MyApp extends StatefulWidget {
  final String myurl, para1;

  const MyApp({Key? key, required this.myurl, required this.para1})
      : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Get URL Parameter"),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  //display parameters and URL here
                  Text(widget.para1 == ''
                      ? "Parameter1 is null"
                      : "Parameter 1 = " + widget.para1),
                  Text(widget.myurl == ''
                      ? "URl is null"
                      : "URL = " + widget.myurl)
                ],
              ))),
    );
  }
}
