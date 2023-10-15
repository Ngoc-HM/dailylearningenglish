//import 'package:englishapp/pages/connect/insert.dart';
//import 'package:englishapp/pages/home/displaymongo.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyHomePage extends StatefulWidget {
  final String videoId = 'JSqUZFkRLr8';
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  late YoutubePlayerController _Youtubecontroller;
  @override
  void initState() {
    super.initState();
    _Youtubecontroller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  void _onPlayerStateChange() {
    if (_Youtubecontroller.value.playerState == PlayerState.playing) ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: const Color.fromARGB(255, 156, 129, 129),
            gap: 8,
            tabBorderRadius: 20,
            iconSize: 20,
            //tabActiveBorder: Border.all(color: Colors.black, width: 1),
            //padding: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            tabs: [
              GButton(
                icon: LineIcons.home,
                iconActiveColor: Color.fromARGB(210, 95, 1, 83),
                text: 'Home',
                textColor: Color.fromARGB(210, 95, 1, 83),
                backgroundColor: Color.fromARGB(255, 252, 174, 235),
              ),
              GButton(
                icon: LineIcons.book,
                iconActiveColor: Color.fromARGB(211, 161, 11, 0),
                text: 'Likes',
                textColor: Color.fromARGB(211, 161, 11, 0),
                backgroundColor: Color.fromARGB(255, 241, 183, 203),
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
                iconActiveColor: Color.fromARGB(255, 163, 126, 4),
                textColor: Color.fromARGB(255, 163, 126, 4),
                backgroundColor: Color.fromARGB(255, 255, 229, 153),
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
                iconActiveColor: Color.fromARGB(255, 0, 85, 0),
                textColor: Color.fromARGB(255, 0, 85, 0),
                backgroundColor: Color.fromARGB(255, 153, 255, 153),
              )
            ]),
        body: SingleChildScrollView(
            child: Container(
          //height: constraints.maxHeight - bottomNavigationBar.preferredSize.height,
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Welcome Hoang Minh Ngoc !',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/home/Avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  YoutubePlayer(controller: _Youtubecontroller),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => MongoInsert(
                        //             //title: '',
                        //             )));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/video.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Video')
                          ],
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/vocab.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Vocab')
                          ],
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/short.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Short')
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => MongodbInsert(
                        //             //title: '',
                        //             )));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/test.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Test')
                          ],
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/exercise.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Exercise')
                          ],
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/game.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Game')
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Text(
                  '    Suggested',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/home/sg1.png'),
                  Image.asset('assets/images/home/sg2.png'),
                ],
              )
            ],
          ),
        )));
  }
}
