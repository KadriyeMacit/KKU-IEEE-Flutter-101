import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotification = false;
  bool isVoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Ayarlar'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bildirimler'),
                    Switch(
                      value: isNotification,
                      onChanged: (value) {
                        setState(() {
                          isNotification = value;
                        });
                      },
                      //activeColor: Colors.pink,
                      //activeTrackColor: Colors.black,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ses'),
                    Switch(
                      value: isVoice,
                      onChanged: (value) {
                        setState(() {
                          isVoice = value;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
