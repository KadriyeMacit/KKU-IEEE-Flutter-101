import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';
import 'package:my_traveller_app/views/launch_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordControllerAgain = TextEditingController();

  //göz için
  bool isVisible = true;

//cinsiyet için
  bool woman = false;
  bool man = false;

  //dropdown için
  int _value = 1;

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
                      top: size.height * .1,
                      bottom: size.height * .06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: nameController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: 'Kullanıcı adı',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20,
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: passwordControllerAgain,
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
                            hintText: 'Parola Tekrar',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cinsiyetiniz:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                                title: Text('Kadın'),
                                activeColor: Colors.black,
                                value: woman,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (newValue) {
                                  setState(() {
                                    woman = newValue;
                                  });
                                }),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                //checkColor: Colors.black,
                                activeColor: Colors.black,
                                title: Text('Erkek'),
                                value: man,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (newValue) {
                                  setState(() {
                                    man = newValue;
                                  });
                                }),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Yaşadığınız şehir:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Center(
                        child: DropdownButton(
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text("Ankara"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("İzmir"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("İstanbul"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Muğla"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Antalya"),
                                value: 5,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }),
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
                        MaterialPageRoute(builder: (context) => LaunchPage()));
                  },
                  child: Text('Kayıt ol',
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
