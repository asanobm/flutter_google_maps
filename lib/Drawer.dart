import 'package:flutter/material.dart';
import 'Pages.dart';
import 'GoogleMaps.dart';

class DWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: new Text('Demo Menu'),
                decoration: new BoxDecoration(color: Colors.blueGrey),
              ),
              new ListTile(
                title: new Text('Item => 1'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Firstpage()));
                },
              ),
              new ListTile(
                title: new Text('Item => 2'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondPage()));
                },
              ),
              new ListTile(
                title: new Text('Google Maps'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new GoogleMaps()));
                },
              )
            ],
          ),
        ),
        appBar: new AppBar(
          title: new Text(' Drawer Demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new Text('Drawer and GoogleMaps SamplePage'),
            new Text('Drawerを利用して各サンプルページに移動することができます。'),
            new Text('Drawerのメニューは左上のアイコンです。')
          ],
        ));
  }
}
