import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          color: Colors.amber,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .65,
            color: Colors.pink,
          ),
        )
      ],
    ));
  }
}
