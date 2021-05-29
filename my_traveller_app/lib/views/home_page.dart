import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imgList = [
    'assets/places/italy.jpg',
    'assets/places/poland.jpg',
    'assets/places/portugal.jpg',
    'assets/places/spain.jpg',
    'assets/places/sweden.jpg',
    'assets/places/switzerland.jpg'
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        Text('Ülkeler'),
        CarouselSlider(
          height: size.height * .25,
          initialPage: 0,
          enlargeCenterPage: true,
          autoPlay: true,
          reverse: false,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayInterval: Duration(seconds: 2),
          scrollDirection: Axis.horizontal,
          pauseAutoPlayOnTouch: Duration(seconds: 10),
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
          items: imgList.map((imgAsset) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  imgAsset,
                  fit: BoxFit.fill,
                ),
              );
            });
          }).toList(),
        ),
      ],
    ));
  }
}
