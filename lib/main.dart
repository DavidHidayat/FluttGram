import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                    Post(size: size),
                    SizedBox(height: size.height * 0.03),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Post extends StatelessWidget {
  const Post({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 2,
      child: Column(children: <Widget>[
        Expanded(
          // flex: 1,
          child: PageView(children: <Widget>[
            Image.asset(
              "assets/images/test_promo.png",
              width: size.width,
            ),
            Image.asset(
              "assets/images/Untitled.png",
              width: size.width / 2,
            ),
            Image.asset(
              "assets/images/ssssss.jpg",
              width: size.width,
            ),
            Image.asset(
              "assets/images/schoncrop.jpg",
              width: size.width,
            ),
            Image.asset(
              "assets/images/A201002032020-10-02_11_00_53.jpg",
              width: size.width,
            ),
          ]),
        ),
        Text("Test")
      ]),
    );
  }
}
