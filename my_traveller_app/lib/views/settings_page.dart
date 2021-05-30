import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';
import 'package:my_traveller_app/theme/theme_mode_manager.dart';
import 'package:thememode_selector/thememode_selector.dart';

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
        // backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Ayarlar',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bildirimler'),
                    Switch(
                      activeColor: Colors.orange,
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
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ses'),
                    Switch(
                      activeColor: Colors.orange,
                      value: isVoice,
                      onChanged: (value) {
                        setState(() {
                          isVoice = value;
                        });
                      },
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tema modu'),
                      ThemeModeSelector(
                        height: 25,
                        onChanged: (mode) {
                          ThemeModeManager.of(context).themeMode = mode;
                        },
                      )
                    ],
                  ),
                ),
                Divider()
              ],
            ),
          ),
        ));
  }
}
