import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('My CV app'),
          ),
        ),
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage('assets/gope.jpg'),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Dipesh Gautam',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Web Developer',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'I am a student',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Cursive',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,top: 10.0),
                child: Text(
                  'Social Links',
                  style: TextStyle(
                    fontSize :20.0,
                  )
                ),
              ),
              Card(
                elevation: 3.0,
                
                            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebook), 
                    onPressed: (){
                      launch('https://www.facebook.com/dipesh.gautam.144');

                    },
                    color: Colors.blue,
                    ),
                     IconButton(
                      icon: Icon(FontAwesomeIcons.twitter), 
                    onPressed: (){
                    launch('https://twitter.com/DipeshG96350241');
                      },
                    color: Colors.blueAccent,
                    ),
                     IconButton(
                      icon: Icon(FontAwesomeIcons.instagram), 
                    onPressed: (){
                      launch('https://www.instagram.com/dipeshgautam22/');
                
                    },
                    color: Colors.red,
                    ),
                     IconButton(
                      icon: Icon(FontAwesomeIcons.linkedin), 
                    onPressed: (){
                      launch('https://www.linkedin.com/in/dipesh-gautam-99b45a18a/');
                    },
                    color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
                  Padding(
                padding: const EdgeInsets.only(left:10.0,top: 10.0),
                child: Text(
                  'Skills',
                  style: TextStyle(
                    fontSize :20.0,
                  )
                ),
              ),
              Card(
                elevation: 5.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                    backgroundImage: NetworkImage(
                      'https://codeit.com.np/storage/2019/11/web.jpg'
                      ),
                    ),
                  title: Text('Web Development'),
                  subtitle: Text('HTML,CSS,JS'),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left:10.0,top: 10.0),
                // child: Text(
                //   'Skills',
                //   style: TextStyle(
                //     fontSize :20.0,
                //   )
                // ),
              ),
              Card(
                elevation: 5.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                    backgroundImage: NetworkImage(
                      'https://wearefram.com/wp-content/uploads/2019/11/The-quick-grasp-of-mobile-app-development-in-2019-and-trend-in-2020.png'
                      ),
                    ),
                  title: Text('App Development'),
                  subtitle: Text('Dart,Flutter'),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
