import 'package:englishappnew/pages/explore/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
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
      body: Stack(
        children: [
          // Image.asset(
          //   "assets/images/home/header.png",
          //   width: 700,
          // ),
          SingleChildScrollView(
              child: Container(
            //height: constraints.maxHeight - bottomNavigationBar.preferredSize.height,
            margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/home/Avatar.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Row(
                              children: [
                                Text('Good Morning, \nHoang Minh Ngoc'),
                                //Text('Hoang Minh Ngoc'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        Image.asset('assets/images/home/notification.png'),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'What would you like learn Today ?',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                )),

                //Image.asset('assets/images/home/search.png'),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Explore(
                                  title: '',
                                  //title: '',
                                )));
                  },
                  child: Image.asset('assets/images/home/podcast_app.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(children: [
                  Text(
                    '    Utilities',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/game.png',
                              width: 50,
                              height: 50,
                            ),
                            const Text('Game'),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/test.png',
                              width: 50,
                              height: 50,
                            ),
                            const Text('Test')
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/home/chat.png',
                              width: 50,
                              height: 50,
                            ),
                            const Text('Chat')
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(children: [
                  Text(
                    'New Releases',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 230),
                  Image.asset('assets/images/home/next_icon.png'),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/home/Rectangle 5.png'),
                    SizedBox(width: 10),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'TTED Talk - Learn English from JackMa \nspeech at TED Talk 2023',
                        ),
                        Row(
                          children: [
                            Text('Entertainment | 05:30'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                //height: 50,
                                child: Image.asset(
                                  'assets/images/home/Play.png',
                                  width: 80,
                                  height: 30,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/home/dowload1.png',
                                  width: 80,
                                  height: 30,
                                ),
                              )

                              // Image.asset('assets/images/home/dowload.png'),
                              //Image.asset('assets/images/home/more.png'),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/home/release_2.png',
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
