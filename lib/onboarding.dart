import 'package:flutter/material.dart';
import 'package:woosah/chatbot.dart';
import 'package:woosah/startpage.dart';
import 'package:woosah/tips.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

  final String? title;

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

makeCardItem(title) {
  return Card(
    child: Container(
      child: Center(
        child: Text(title),
      ),
      // height: 20,
    ),
    // elevation: 8,
    // shadowColor: Colors.white,
    margin: EdgeInsets.all(20),
  );
}

optionCardItem(title, color) {
  return Card(
    child: Text(
      title,
      style: TextStyle(fontSize: 30),
    ),
    color: color,
    // elevation: 8,
    shadowColor: Colors.red,
    margin: EdgeInsets.all(10),
  );
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 50,
            ),
            Image(
              image: AssetImage(
                "assets/index.jpeg",
              ),
              height: 100,
              fit: BoxFit.scaleDown,
            ),
            makeCardItem("Welcome to Woosah \n" +
                "The place where you come to pause, reflect and take back control of your life"),
            makeCardItem("What do you like to do for fun ?"),
            Wrap(
              children: [
                optionCardItem("Jump", Colors.yellow),
                optionCardItem("Sleep", Colors.purple),
                optionCardItem("Exercise", Colors.pink),
                optionCardItem("Sing", Colors.orange),
              ],
            ),
            makeCardItem("What makes you sad ?"),
            Wrap(
              children: [
                optionCardItem("Failing", Colors.orange),
                optionCardItem("Traveling", Colors.yellow),
                optionCardItem("Oversleeping", Colors.teal),
                optionCardItem("Fighting", Colors.cyanAccent),
              ],
            ),
            makeCardItem("What makes you happy ?"),
            Wrap(
              children: [
                optionCardItem("Failing", Colors.orange),
                optionCardItem("Traveling", Colors.yellow),
                optionCardItem("Oversleeping", Colors.teal),
                optionCardItem("Fighting", Colors.cyanAccent),
              ],
            ),
            makeCardItem("What makes you sad ?"),
            Wrap(
              children: [
                optionCardItem("Failing", Colors.orange),
                optionCardItem("Traveling", Colors.yellow),
                optionCardItem("Oversleeping", Colors.teal),
                optionCardItem("Fighting", Colors.cyanAccent),
              ],
            ),
            Container(
              width: 100,
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyStartPage(title: "Home")),
                );
              },
              child: optionCardItem("Submit", Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}

/*

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
                onTap: () {},
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
              )

 */
