import 'package:flutter/material.dart';
import 'Drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// StatelessWidget
  /// MyAppクラスはStatelessWidgetを継承し、MyAppクラスはStatelessWidgetです。
  /// StatelessWidgetはステート（状態をを表す値）を持たないWidgetです。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DWidget(),
    );
  }
}

class _MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
