import 'package:flutter/material.dart';
import 'package:todoapp/UI/intray/intray_page.dart';
import 'package:todoapp/modles/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: new Stack(
            children: [
              new TabBarView(
                children: [
                  new IntrayPage(),
                  new Container(
                    color: Colors.orange,
                  ),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              new Container(
                padding: const EdgeInsets.only(left: 50),
                height: 180,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50),
                  ),
                ),
                child: new Row(
                  children: [
                    new Text("Intray",
                        style: new TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Avenir")),
                    new Container(),
                  ],
                ),
              ),
              new Positioned(
                height: 65,
                width: 65,
                top: 147,
                left: 170,
                child: new FloatingActionButton(
                  elevation: 7,
                  backgroundColor: red,
                  mini: false,
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          appBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
