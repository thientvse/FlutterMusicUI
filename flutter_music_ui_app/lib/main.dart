import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttery_seekbar/fluttery_seekbar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget _buildRadiaSeekbar(){

    double _thumbPercent = 0.4;

    return RadialSeekBar(
      trackColor: Colors.red.withOpacity(.5),
      trackWidth: 2.0,
      progressColor: Color(0xFFFE1483),
      progressWidth: 5.0,
      thumbPercent: _thumbPercent,
      thumb: CircleThumb(
        color: Color(0xFFFE1483),
        diameter: 20.0,
      ),
      progress: _thumbPercent,
      onDragUpdate: (double percent){
        setState(() {
          _thumbPercent = percent;
        });
      },
    );
  }





  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildRadialSeekbar() {
      double _thumbPercent = 0.4;

      return RadialSeekBar(
        trackColor: Colors.red.withOpacity(.5),
        trackWidth: 1.0,
        progressColor: Color(0xFFFE1483),
        progressWidth: 2.0,
        thumbPercent: _thumbPercent,
        thumb: CircleThumb(
          color: Color(0xFFFE1483),
          diameter: 20.0,
        ),
        progress: _thumbPercent,
        onDragUpdate: (double percent) {
          setState(() {
            _thumbPercent = percent;
          });
        },
      );
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(


        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(

                Icons.arrow_back_ios,
                color: Color(0xFFFE1483)),
                onPressed: () {},
        ),
        title: Text("Music World",
          style: TextStyle(color: Color(0xFFFE1483), fontFamily: "Nexa")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu), color: Color(0xFFFE1483),


              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[

          SizedBox(
            height: 5.0,
          ),
          Center(
              child: Container(
            width: 150.0,
            height: 150.0,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFE1483).withOpacity(.5),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: _buildRadialSeekbar(),
                  ),
                ),
                Center(
                  child: ClipOval(
                    clipper: MClipper(),
                    child: Image.asset(
                      'assets/images/justine.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: <Widget>[
              Text(
                "Justine Bieber fit. Never say",
                style: TextStyle(
                    color: Color(0xFFFE1483),
                    fontSize: 15.0,
                    fontFamily: "Nexa"),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "The Weekend",
                style: TextStyle(
                    color: Color(0xFFFE1483),
                    fontSize: 12.0,
                    fontFamily: "NexaLight"),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            width: 300.0,
            height: 100.0,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 50.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xFFed3961), width: 2.0),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.fast_rewind,
                            size: 40.0,
                            color: Color(0xFFed3961),
                          ),
                          Expanded(child: Container()),
                          Icon(Icons.fast_forward,
                              size: 40.0, color: Color(0xFFed3961)),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFed3961), shape: BoxShape.circle),
                    child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 180.0,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                    left: -20,
                    child: Container(
                      width: 40.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFed3961),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0))),
                    )),
                Positioned(
                    right: -20,
                    child: Container(
                      width: 40.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFed3961),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0))),
                    )),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      song('assets/images/cover_01.jpg', "Never say",
                          "Believe 2012"),
                      song('assets/images/cover_02.jpg', "Beauty...",
                          "Believe 2012"),
                      song('assets/images/cover_03.png', "Boyfriend",
                          "Believe 2012")
                    ],
                  ),
                )
              ],

            ),
          )
        ],
      ),

    );
  }
}

Widget song(String image, String title, String subtitle) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          image,
          width: 40.0,
          height: 40.0,
        ),
        SizedBox(
          width: 8.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Color(0xFFFE1483), fontSize: 14.0, fontFamily: "Nexa"),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Color(0xFFFE1483),
                  fontSize: 12.0,
                  fontFamily: "NexaLight"),
            )
          ],
        )
      ],
    ),
  );
}

class MClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;

  }
}
