import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
    // ignore: avoid_single_cascade_in_expression_statements
    //..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_Youtubecontroller.value.playerState == PlayerState.playing) ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Course',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.blue,
        ),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
