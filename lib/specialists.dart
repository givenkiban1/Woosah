import 'package:flutter/material.dart';
import 'package:woosah/article.dart';
import 'package:woosah/chatbot.dart';

class MySpecialists extends StatefulWidget {
  MySpecialists({Key? key, this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

  final String? title;

  @override
  _MySpecialistsState createState() => _MySpecialistsState();
}

makeCardItem(title, img) {
  return Card(
    child: Container(
      child: Stack(
        children: [
          Image.network(
            img,
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

class _MySpecialistsState extends State<MySpecialists> {
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ArticlePage(
                      //           title: "Study Tips", img: "assets/study.jpg")),
                      // );
                    },
                    child: makeCardItem("Dr Lindie Vuyokazi",
                        "https://i.imgur.com/GbE0opS.jpeg?ahb"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ArticlePage(
                      //           title: "Embracing who you are",
                      //           img: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftheconversation.com%2Fwhats-in-a-title-when-it-comes-to-doctor-more-than-you-might-think-127979&psig=AOvVaw3A9tNBYgnUNJ2o9Yqi3dhA&ust=1633347551669000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCKCz1viTrvMCFQAAAAAdAAAAABAD")),
                      // );
                    },
                    child: makeCardItem(
                        "Dr Smutz", "https://i.imgur.com/Ua1L0HM.jpeg?jnj"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ArticlePage(
                      //           title: "Coping in large crowds",
                      //           img: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.intercare.co.za%2Farticle%2Fmedical-doctor-types&psig=AOvVaw3A9tNBYgnUNJ2o9Yqi3dhA&ust=1633347551669000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCKCz1viTrvMCFQAAAAAdAAAAABAP")),
                      // );
                    },
                    child: makeCardItem("Dr Irene J.B",
                        "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop"),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ArticlePage(
                      //           title: "Opening up", img: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fblack-woman-doctor&psig=AOvVaw3A9tNBYgnUNJ2o9Yqi3dhA&ust=1633347551669000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCKCz1viTrvMCFQAAAAAdAAAAABAh")),
                      // );
                    },
                    child: makeCardItem("Dr Likola B.",
                        "https://media.istockphoto.com/photos/we-offer-our-patients-premium-healthcare-here-picture-id638647058?k=20&m=638647058&s=612x612&w=0&h=aRF56ZIBXBL1wN45ZRaHkhmjJjIahkmXTYki7wQteJQ="),
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
