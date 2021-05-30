import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_traveller_app/style.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('$command bulunamadı');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          color: mainColor,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            height: size.height * .67,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * .07),
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: size.height * .06,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * .2),
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              child: AutoSizeText(
                'Kadriye Macit',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * .25),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    print('maile tıklandı');
                    customLaunch('mailto:helloworld@gmail.com');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * .1,
                ),
                InkWell(
                  onTap: () {
                    print('telefona tıklandı');
                    customLaunch('tel:05554443322');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * .32, bottom: 10, left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: AutoSizeText(
                    'Hakkımda',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: AutoSizeText(
                    'Kırıkkale Üniversitesi - Bilgisayar Mühendisliği. Mobil Uygulama Geliştiricisi.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: AutoSizeText(
                    'Planlanan Gezilerim',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  '27',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                                AutoSizeText(
                                  'Haziran',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: size.width * .03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "Portekiz'e Gezi",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: size.width * .6,
                              child: AutoSizeText(
                                "Porto'ya gidilip Pastel de Nata yenilecek.",
                                maxLines: 2,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  '27',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                                AutoSizeText(
                                  'Haziran',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: size.width * .03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "Portekiz'e Gezi",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: size.width * .6,
                              child: AutoSizeText(
                                "Porto'ya gidilip Pastel de Nata yenilecek.",
                                maxLines: 2,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  '27',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                                AutoSizeText(
                                  'Haziran',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: size.width * .03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "Portekiz'e Gezi",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: size.width * .6,
                              child: AutoSizeText(
                                "Porto'ya gidilip Pastel de Nata yenilecek.",
                                maxLines: 2,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
