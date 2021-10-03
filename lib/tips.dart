import 'package:flutter/material.dart';
import 'package:woosah/article.dart';
import 'package:woosah/chatbot.dart';

class MyTipsPage extends StatefulWidget {
  MyTipsPage({Key? key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

  final String? title;

  @override
  _MyTipsPageState createState() => _MyTipsPageState();
}

makeCardItem(title, img) {
  return Card(
    child: Container(
      child: Stack(
        children: [
          Image(
            image: AssetImage(img),
            width: 250,
            height: 150,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              title,
              style: TextStyle(backgroundColor: Colors.blueGrey, fontSize: 20),
            ),
          )
        ],
      ),
      width: 250,
      height: 150,
    ),
    elevation: 8,
    // shadowColor: Colors.white,
    margin: EdgeInsets.all(20),
  );
}

class _MyTipsPageState extends State<MyTipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Wrap(
                // alignment: WrapAlignment.end,
                spacing: 10.0,
                runSpacing: 20.0,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticlePage(
                                title: "Study Tips", img: "assets/study.jpg")),
                      );
                    },
                    child: makeCardItem("Study Tips", "assets/study.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticlePage(
                                title: "Embracing who you are",
                                img: "assets/selflove.jpg")),
                      );
                    },
                    child: makeCardItem(
                        "Embracing who you are", "assets/selflove.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticlePage(
                                title: "Coping in large crowds",
                                img: "assets/socialize.jpg")),
                      );
                    },
                    child: makeCardItem(
                        "Coping in large crowds", "assets/socialize.jpg"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticlePage(
                                title: "Opening up", img: "assets/open.jpg")),
                      );
                    },
                    child: makeCardItem("Opening up", "assets/open.jpg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
