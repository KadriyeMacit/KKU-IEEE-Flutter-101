import 'package:flutter/material.dart';
import 'package:my_traveller_app/views/favorite_page.dart';
import 'package:my_traveller_app/views/home_page.dart';
import 'package:my_traveller_app/views/launch_page.dart';
import 'package:my_traveller_app/views/profile_page.dart';
import 'package:my_traveller_app/views/settings_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('index: $_selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'Gezi Rehberim',
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Kadriye',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'kadriye@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              ListTile(
                  title: Text('Anasayfa'),
                  leading: Icon(Icons.home),
                  onTap: () => Navigator.pop(context)),
              ListTile(
                title: Text('Ayarlar'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    )),
              ),
              Divider(),
              ListTile(
                  title: Text('Çıkış yap'),
                  leading: Icon(Icons.logout),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LaunchPage(),
                      )))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Ekle'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        body: _selectedIndex == 0
            ? HomePage()
            : _selectedIndex == 1
                ? AddPage()
                : ProfilePage());
  }
}
