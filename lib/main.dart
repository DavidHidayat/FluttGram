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
      debugShowCheckedModeBanner: false,
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
                Post(size: size),
                Post(size: size),
                Post(size: size),
                Post(size: size),
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
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[100],
      width: size.width,
      height: 400.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          PostHeader(),
          PostContent(),
          PostFooter(),
          PostCaption(),
        ],
      ),
    );
  }
}

class PostContent extends StatelessWidget {
  const PostContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 400,
        child: PageView(children: <Widget>[
          Image.asset(
            "assets/images/test_promo.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/Untitled.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/ssssss.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/schoncrop.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/A201002032020-10-02_11_00_53.jpg",
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/A201002032020-10-02_11_00_53.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(child: Text("Nairobi")),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}

class PostCaption extends StatelessWidget {
  const PostCaption({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "Nairobi ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text:
                " - Reprehenderit nulla aliquip est eiusmod consequat elit id. Qui quis sit excepteur ea esse consectetur nulla ea dolor minim consectetur officia dolore id. Sit dolore sunt et cupidatat duis id. Minim laboris proident aliqua voluptate amet magna anim laboris pariatur.",
            style: TextStyle(color: Colors.black),
          )
        ]),
      ),
    );
  }
}

class PostFooter extends StatelessWidget {
  const PostFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon_wrap(icon: Icon(Icons.favorite_border)),
          Icon_wrap(icon: Icon(Icons.comment_outlined)),
          Icon_wrap(icon: Icon(Icons.send_outlined)),
          Expanded(
            child: Container(),
          ),
          Icon_wrap(icon: Icon(Icons.bookmark_outline))
        ],
      ),
    );
  }
}

class Icon_wrap extends StatelessWidget {
  final Icon icon;
  const Icon_wrap({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: icon,
    );
  }
}
