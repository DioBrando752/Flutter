import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.orange
      ),
      home: widgetHome(),
    );
  }
}

class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hi"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Hi Gabriel!",
              style: TextStyle(
                fontSize: 60,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                //decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dashed,
              )),
        ),
      ),
    );
  }
}