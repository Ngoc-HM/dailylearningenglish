import 'package:englishappnew/meme/checkmeme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Test extends StatefulWidget {
  const Test({super.key});
  final String videoId = 'q2YUtZum9wc';
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late YoutubePlayerController _Youtubecontroller;
  @override
  void initState() {
    super.initState();
    _Youtubecontroller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    )..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_Youtubecontroller.value.playerState == PlayerState.playing) ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
          rippleColor: Colors.grey,
          hoverColor: Colors.grey,
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.black,
          tabBackgroundColor: Color.fromARGB(255, 156, 129, 129),
          gap: 10,
          tabBorderRadius: 20,
          iconSize: 30,
          //tabActiveBorder: Border.all(color: Colors.black, width: 1),
          //padding: EdgeInsets.all(16),
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 13),
          tabs: [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
              iconActiveColor: Color(0xFF865DFF),
              textColor: Color(0xFF865DFF),
              backgroundColor: Color(0xFFFFFFFF),
            ),
            GButton(
              icon: LineIcons.server,
              text: 'Like',
              iconActiveColor: Color(0xFF865DFF),
              textColor: Color(0xFF865DFF),
              backgroundColor: Color(0xFFFFFFFF),
            ),
            GButton(
              icon: LineIcons.bell,
              text: 'Notification',
              iconActiveColor: Color(0xFF865DFF),
              textColor: Color(0xFF865DFF),
              backgroundColor: Color(0xFFFFFFFF),
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
              iconActiveColor: Color(0xFF865DFF),
              textColor: Color(0xFF865DFF),
              backgroundColor: Color(0xFFFFFFFF),
            )
          ]),
      appBar: AppBar(),
      body: Column(
        children: [
          YoutubePlayer(controller: _Youtubecontroller),
          SizedBox(
            height: 10,
          ),
          Text(
            "TedX VN - Title of the video",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text("Description"),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/test/body.png"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.black,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.download,
                    color: Colors.black,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.menu_book_outlined,
                    color: Colors.black,
                  )),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Test',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 285),
              Image.asset('assets/images/home/next_icon.png'),
            ]),
          ),
          OutlinedButton(
              // set mau nen cho button
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xFF865DFF).withOpacity(0.1),
                side: BorderSide(color: Color(0xFF865DFF), width: 3),
              ),
              onPressed: () {},
              child: Text(
                "Listen to the video and fill in the blanks",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(height: 10),
          Image.asset("assets/images/test/test.png"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => MeMe()));
        },
        child: Icon(Icons.check_box_outlined),
        backgroundColor: Color(0xFF865DFF).withOpacity(0.5),
      ),
    );
  }
}
