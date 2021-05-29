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

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                    color: _current == index ? Colors.orange : Colors.grey,
                    shape: BoxShape.circle),
              );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text('Portekiz'),
                          trailing:
                              Icon(Icons.location_on, color: Colors.orange),
                          subtitle: Text('Porto, Lizbon, Coimbra'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text('Polonya'),
                          trailing:
                              Icon(Icons.location_on, color: Colors.orange),
                          subtitle: Text('Lublin, Varşova, Krakow'),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text('Portekiz'),
                          trailing:
                              Icon(Icons.location_on, color: Colors.orange),
                          subtitle: Text('Porto, Lizbon, Coimbra'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
