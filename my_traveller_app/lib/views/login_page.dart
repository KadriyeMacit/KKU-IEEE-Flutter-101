import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';

import 'menu_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    //border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 37,
                          offset: Offset(0, 3))
                    ]
                    //color: Colors.orangeAccent
                    ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      //top: size.height * .4,
                      bottom: size.height * .06),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .2,
                      ),
                      Text(
                        'Gezi Rehberim uygulaması '
                        'birçok kişiyi ortak hayallerde buluşturur.',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 24, fontFamily: 'IndieFlower'),
                      ),
                      SizedBox(
                        height: size.height * .2,
                      ),
                      TextField(
                        controller: emailController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            hintText: 'Kullanıcı maili',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: isVisible ? true : false,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                print('göz ikonu');
                                if (isVisible) {
                                  setState(() {
                                    isVisible = false;
                                  });
                                  print(isVisible);
                                } else {
                                  setState(() {
                                    isVisible = false;
                                  });
                                  isVisible = true;
                                  print(isVisible);
                                }
                              },
                              child: isVisible
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.black,
                                    ),
                            ),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black,
                            ),
                            hintText: 'Parola',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuPage()));
                  },
                  child: Text('Giriş yap',
                      style: TextStyle(
                        color: Colors.black,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
