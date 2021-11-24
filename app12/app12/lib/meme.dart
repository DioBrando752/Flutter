import 'package:flutter/material.dart';
 
class Meme extends StatelessWidget {
  const Meme({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }
 
  _body(BuildContext context) {
    return Center(
      child:Container(
      height: 300,
      width: 800,
      child: Image(
        fit: BoxFit.contain,
        image: NetworkImage('https://i.makeagif.com/media/1-26-2017/4d1j66.gif')
      )
    ));
  }
}