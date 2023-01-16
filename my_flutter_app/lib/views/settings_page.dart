import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Setting"))),

        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                  child: Icon(
                    Icons.settings,
                    size: 72,
                    color: Colors.grey,
              )),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Version 1.0.0'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.shop),
                title: Text('About Us'),
              )
            ],
          ),
        ));
  }
}
