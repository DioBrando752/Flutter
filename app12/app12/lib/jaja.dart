import 'package:flutter/material.dart';

class Jaja extends StatelessWidget {
  const Jaja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
        child: Container(
            height: 500,
            width: 500,
            child: Image(
                fit: BoxFit.contain,
                image: NetworkImage(
                    'https://i.pinimg.com/736x/03/9e/32/039e323431086b01095bc14ea8074d2f.jpg'))));
  }
}
