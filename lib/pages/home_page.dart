import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> imgList = [
    'assets/places/denmark.jpg',
    'assets/places/finland.jpg',
    'assets/places/scotland.jpg',
    'assets/places/sweden.jpeg',
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
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
            const SizedBox(
            height: 20,
          ),
              CarouselSlider(
                options: CarouselOptions(
                  height: size.height * .25,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
            items: imgList.map((imgAsset) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(),
                  child: Image.asset(
                      imgAsset,
                    fit: BoxFit.fill,
                  ),
                );
              });
            }).toList(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                      color: _current == index ? Colors.orange : Colors.grey,
                      shape: BoxShape.circle),
                );
              })),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
            Card(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text('Portekiz'),
                    trailing: Icon(Icons.location_on, color: Colors.orange),
                    subtitle: Text('Porto, Lizbon, Coimbra'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text('İsveç'),
                    trailing: Icon(Icons.location_on, color: Colors.orange),
                    subtitle: Text('Stakholm, Malmö, Göteborg'),
                  ),
                ),
              ],
            ),
          ),
                Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:  const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text('İskoçya '),
                            trailing: Icon(Icons.location_on,color: Colors.orange),
                            subtitle: Text('Edinburgh, Glasgow, Aberdeen'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )

        ],

      ),)

    );
  }
}
