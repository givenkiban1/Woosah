import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  ArticlePage({Key? key, this.title, this.img}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

  final String? title;
  final String? img;

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // the img @ top of article
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: AssetImage(widget.img!),
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),

            // written by, 5 min read
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "a 5 min read, by Anonymous User",
                textAlign: TextAlign.right,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis mauris sit amet massa vitae. Posuere ac ut consequat semper viverra nam libero justo laoreet. Gravida neque convallis a cras semper auctor neque. Ultrices sagittis orci a scelerisque purus semper. Viverra justo nec ultrices dui sapien eget mi proin sed. Amet massa vitae tortor condimentum lacinia quis vel. Amet nulla facilisi morbi tempus iaculis. Ut sem nulla pharetra diam sit amet nisl suscipit. Gravida cum sociis natoque penatibus et magnis. Pretium viverra suspendisse potenti nullam ac tortor vitae. Diam sit amet nisl suscipit. Non pulvinar neque laoreet suspendisse. Et malesuada fames ac turpis. Nisi vitae suscipit tellus mauris a diam maecenas. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Massa placerat duis ultricies lacus sed turpis.\n\nDonec et odio pellentesque diam. Morbi non arcu risus quis varius quam quisque. Vitae proin sagittis nisl rhoncus mattis rhoncus urna. Urna cursus eget nunc scelerisque viverra. Tempor commodo ullamcorper a lacus vestibulum sed. Odio pellentesque diam volutpat commodo sed egestas. Mauris in aliquam sem fringilla ut. Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Est lorem ipsum dolor sit amet. Imperdiet sed euismod nisi porta lorem mollis aliquam. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Tempus egestas sed sed risus pretium quam. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. A condimentum vitae sapien pellentesque habitant. Pretium fusce id velit ut tortor pretium viverra suspendisse.\n\nPellentesque pulvinar pellentesque habitant morbi tristique senectus. Senectus et netus et malesuada fames. Sem et tortor consequat id porta. Ut tellus elementum sagittis vitae et leo. Est velit egestas dui id ornare. Vestibulum morbi blandit cursus risus at. In eu mi bibendum neque egestas congue quisque egestas diam. Non enim praesent elementum facilisis. Lorem ipsum dolor sit amet consectetur. Aliquet nec ullamcorper sit amet risus nullam eget. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Risus pretium quam vulputate dignissim suspendisse in est ante. Convallis posuere morbi leo urna. Tristique senectus et netus et malesuada. Vitae tempus quam pellentesque nec. Sed velit dignissim sodales ut. Scelerisque viverra mauris in aliquam sem fringilla. Ultrices neque ornare aenean euismod elementum nisi quis eleifend quam. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Velit dignissim sodales ut eu sem integer vitae justo eget.\n\nMollis aliquam ut porttitor leo a diam sollicitudin. Viverra mauris in aliquam sem fringilla ut morbi tincidunt. Velit egestas dui id ornare. Mi bibendum neque egestas congue quisque egestas. Egestas erat imperdiet sed euismod nisi porta lorem. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Interdum velit euismod in pellentesque massa placerat duis. Consequat nisl vel pretium lectus quam id leo in vitae.\n\nInterdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Sagittis orci a scelerisque purus semper eget duis at tellus. Praesent tristique magna sit amet purus gravida quis. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Laoreet non curabitur gravida arcu ac tortor dignissim. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Duis at tellus at urna condimentum mattis pellentesque id. Massa placerat duis ultricies lacus. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Pharetra sit amet aliquam id diam maecenas. Scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis. Arcu non odio euismod lacinia at quis risus sed. Natoque penatibus et magnis dis parturient montes nascetur ridiculus.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
