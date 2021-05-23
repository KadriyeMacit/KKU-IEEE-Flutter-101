import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';
import 'package:my_traveller_app/views/login_page.dart';
import 'package:my_traveller_app/views/register_page.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, top: 50, bottom: 100),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/home.jpg',
                      height: size.height * .5,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            print('giriş yap butonu');

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'Giriş yap',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            print('kayıt ol butonu');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text(
                            'Kayıt ol',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
