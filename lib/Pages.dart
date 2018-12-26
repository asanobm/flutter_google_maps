import 'package:flutter/material.dart';
import 'Drawer.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: DWidget(),
      appBar: new AppBar(
        title: new Text('First Page Title'),
      ),
      body: new Text('First Page Body'),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: DWidget(),
      appBar: new AppBar(
        title: new Text(' Second Page Title'),
      ),
      body: new Text('Second Page Body'),
    );
  }
}
