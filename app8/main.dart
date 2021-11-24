import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  title() {
    return AppBar(
      title: Text(
        'Anuncios',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          carousel(),
        ],
      ),
    );
  }

  image(link) {
    return Image.network(
      link,
      width: 200,
      height: 200,

    );
  }

  carousel() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
      height: 400,
      child: ListView(
        children: <Widget>[
          pading(
              containerAd(
                  image(
                      'https://trimais.vteximg.com.br/arquivos/ids/1002074-310-310/foto_original.jpg?v=637395788887500000'),
                  container(
                      pading(text('cachaça 51 ', 15.0, Colors.white), 0, 10,
                          0, 0),
                      pading(available(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://images-submarino.b2w.io/produtos/01/00/img/3850404/2/3850404280_1GG.jpg'),
                  container(
                      pading(text('cd de play', 15.0, Colors.white), 0, 10,
                          0, 0),
                      pading(available(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'http://1.bp.blogspot.com/_vqxFy2T1t1c/SUGLFy1SLhI/AAAAAAAAADI/msZxtiOHiB4/s320/Xuning.jpg'),
                  container(
                      pading(text('carro tunado', 15.0, Colors.white), 0, 10,
                          0, 0),
                      pading(available(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://www.casasbahia-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=6016124'),
                  container(
                      pading(
                          text('CD do raça negra', 15.0, Colors.white), 0, 10, 0, 0),
                      pading(available(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://www.vagalume.com.br/tim-maia/discografia/sufocante.jpg'),
                  container(
                      pading(text('album do tim maia', 15.0, Colors.white), 0,
                          10, 0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),

        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  containerAd(context, content) {
    return Container(
        height: 300,
        width: 300,
        color: Colors.grey,
        child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: context),
          content
        ]));
  }

  container(content, describe) {
    return Container(
      child: Column(
        children: <Widget>[content, describe],
      ),
    );
  }

  pading(content, double L, double T, double B, double R) {
    return Padding(padding: EdgeInsets.fromLTRB(L, T, R, B), child: content);
  }

  text(content, double size, color) {
    return Text(content, style: TextStyle(fontSize: size, color: color));
  }

  available() {
    return text('Disponivel', 30.0, Colors.lightGreenAccent);
  }

  unavailable() {
    return text('Indisponivel', 30.0, Colors.red);
  }
}
      