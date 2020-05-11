import 'package:flutter/material.dart';
import 'package:planningPoker/home/cards.dart';
import 'package:universal_platform/universal_platform.dart';

class HomePage extends StatelessWidget {
  
  var fibonacci = [0, 1, 2, 3, 5, 8, 13, 21, '☕', '?'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planning Poker'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: UniversalPlatform.isIOS || UniversalPlatform.isAndroid ? 2 : 5,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: <Widget>[
          for (var i in fibonacci) 
            ScrumCard(
              text: i.toString(),
              notifyParent: (text) {
                print(text);
              },
          )
        ],
        ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.only(bottom: 30),
              child: Text('JIRA List'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('JIRA - 1234'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('JIRA - 1234'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}