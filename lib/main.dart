import 'package:flutter/material.dart';
import 'package:music_ui/controles.dart';

void main() {
  runApp(new music_ui());
}

class music_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music UI',
      home: Music(),
    );
  }
}

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        leading: new Icon(Icons.arrow_back,
        color: Colors.white,),

        title: new Text("Now Playing",
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 19.0,
        ),),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.share, color: Colors.white),
              onPressed: null),
          new IconButton(
              icon: new Icon(Icons.favorite_border, color: Colors.white),
              onPressed: null),
          new IconButton(
              icon: new Icon(Icons.menu, color: Colors.white), onPressed: null),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: new Center(
              child: new Container(
                  width: 210.0,
                  height: 210.0,
                  child: new ClipOval(
                    child: new Image.network(
                      'https://pre00.deviantart.net/4820/th/pre/f/2015/144/e/e/avicii_by_avicii_true_by_joshuacarlbaradas-d8ujxwi.jpg',
                    ),
                  )),
            ),
          ),
          new BottomControls(),
        ],
      ),
    );
  }
}
