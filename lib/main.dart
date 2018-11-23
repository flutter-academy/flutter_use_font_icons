import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boxicons_flutter/boxicons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Use Font Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Font Icons'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            IconWidget(
              Icons.alarm,
              'Material design',
            ),
            IconWidget(
              FontAwesomeIcons.angry,
              'Font Awesome',
            ),
            IconWidget(
              IconData(0xeb03, fontFamily: 'Boxicons'),
              'Boxicons',
            ),
            IconWidget(
              Boxicons.bxBall,
              'Boxicons (boxicons_flutter)',
            )
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  IconWidget(this.iconData, this.description);

  final IconData iconData;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Icon(
            iconData,
            size: 120,
          ),
          Text(description),
        ],
      ),
    );
  }
}
