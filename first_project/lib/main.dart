import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My CV APP'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 3.0,
                color: Colors.lightGreen[50],
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: AssetImage("assets/nawaraj.jpg"),
                        radius: 40,
                      ),
                      Text(
                        "Mr. Nawaraj Luitel",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Cursive",
                        ),
                      ),
                      Text(
                        "Software Engineer",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Cursive",
                          fontSize: 20.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                            "Hello I am Nawaraj Luitel. I have completed BSC(Hons) in Computing from London Metropolitan University. Currently I am Working in Itahari International College."),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  bottom: 3.0,
                ),
                child: Center(
                  child: Text("Social Media Links",
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.lightGreen[50],
                  elevation: 2.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          launch('https://www.facebook.com/nawa1234567/');
                        },
                        icon:
                            Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.redAccent,
                          size: 30.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: 30.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.0,
                  bottom: 3.0,
                ),
                child: Center(
                  child: Text("Skills",
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.lightGreen[50],
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text('Web Development'),
                          subtitle: Text(
                              'Having skill of frontend, backend and database make me full stack developer'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Web Development'),
                          subtitle: Text(
                              'Having skill of frontend, backend and database make me full stack developer'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Web Development'),
                          subtitle: Text(
                              'Having skill of frontend, backend and database make me full stack developer'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
