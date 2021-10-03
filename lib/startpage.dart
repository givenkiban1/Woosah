import 'package:flutter/material.dart';
import 'package:woosah/chatbot.dart';
import 'package:woosah/specialists.dart';
import 'package:woosah/tips.dart';
import 'dart:math';

class MyStartPage extends StatefulWidget {
  MyStartPage({Key? key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

  final String? title;

  @override
  _MyStartPageState createState() => _MyStartPageState();
}

makeCardItem(title) {
  return Card(
    child: Container(
      child: Center(
        child: Text(title),
      ),
      width: 130,
      height: 100,
    ),
    elevation: 8,
    shadowColor: Colors.white,
    margin: EdgeInsets.all(20),
  );
}

class _MyStartPageState extends State<MyStartPage> {
  int? num;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Random random = new Random();

    num = random.nextInt(4);
  }

  @override
  Widget build(BuildContext context) {
    List<MaterialColor> colors = [];
    colors.add(Colors.green);
    colors.add(Colors.blue);
    colors.add(Colors.orange);
    colors.add(Colors.red);

    List<String> images = ["smily.png", "sad.png", "meh.png", "bro.png"];
    List<String> emo = [
      "You are happy",
      "You are sad",
      "You are neutral",
      "You are pissed"
    ];
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: Column(
        children: [
          Wrap(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ChatBotPage(title: "Chat with Lindie")),
                  );
                },
                child: makeCardItem("Chat with Lindie"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MySpecialists(title: "Specialists Near You")),
                  );
                },
                child: makeCardItem("Specialists"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyTipsPage(title: "Your daily dose of Advice")),
                  );
                },
                child: makeCardItem("Tips and Tricks"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: 30.0,
          backgroundColor: colors[num!],
          backgroundImage: AssetImage(
            images[num!],
          ),
        ),
        backgroundColor: Colors.green,
        tooltip: emo[num!],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: const Color(0xFF778899),
                    backgroundImage: AssetImage("assets/default.jpg"),
                  ),
                  Text('Given Kibanza')
                ],
              ),
            ),
            ListTile(
              title: const Text('My profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Image(
        image: AssetImage("assets/ad1.jpeg"),
        height: 100,
        fit: BoxFit.fill,
      ),
    );
  }
}
