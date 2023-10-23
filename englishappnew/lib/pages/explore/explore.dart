import 'package:englishappnew/pages/categlories/categlories.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Explore extends StatefulWidget {
  const Explore({super.key, required this.title});
  final String title;
  @override
  State<Explore> createState() => _Explore();
}

class _Explore extends State<Explore> {
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
      //resizeToAvoidBottomInset: false,
      //extendBody: true,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('           Explore', style: TextStyle(fontSize: 30)),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Text('Explore', style: TextStyle(fontSize: 30)),
              Container(
                width: 350,
                height: 90,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'What would you like learn Today ?',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                )),
              ),
              //SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF548AD8),
                          Color(0xFF8A4BD3),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Categluries()));
                      },
                      child: Container(
                          child: Text('Entertain',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))),
                    ),
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF33E62),
                          Color(0xFFF79334),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                          child: Text('Science',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF893E9C),
                          Color(0xFFF82B73),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                          child: Text('Daily English',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))),
                    ),
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFD39646),
                          Color(0xFFCCCCCD),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                          child: Text('Business',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Hot Categories',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 185),
                  Image.asset('assets/images/home/next_icon.png'),
                ]),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      // ignore: prefer_const_constructors
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      width: 230,
                      height: 60,
                      child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Categluries()));
                          },
                          child: Row(
                            children: [
                              Center(
                                  child: Image.asset(
                                      "assets/images/explore/english.png")),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    "English entertain",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text("150+ Lessons",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(width: 10),
                    Container(
                      // ignore: prefer_const_constructors
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      width: 230,
                      height: 60,
                      child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Center(
                                  child: Image.asset(
                                      "assets/images/explore/motivational.png")),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    "Motivational",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text("200+ Podcasts",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Row(children: [
                  SizedBox(width: 15),
                  Text(
                    'Your Learning Now',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 150),
                  Image.asset('assets/images/home/next_icon.png'),
                ]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("assets/images/explore/EnglishDaily.png")),
              ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("assets/images/explore/EnglishDaily.png")),
              ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("assets/images/explore/EnglishDaily.png")),
              ElevatedButton(
                onPressed: () {},
                child: Row(children: [
                  SizedBox(width: 15),
                  Text(
                    'Today Learning',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 180),
                  Image.asset('assets/images/home/next_icon.png'),
                ]),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        // ignore: prefer_const_constructors
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        width: 230,
                        height: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              height: 200,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                      "assets/images/explore/todaylearning.png"),
                                  SizedBox(height: 10),
                                  Text(
                                    "What happens when nature go viral?",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/explore/mat.png",
                                          width: 50,
                                          height: 50),
                                      Text("200"),
                                      Image.asset(
                                          "assets/images/explore/primary.png",
                                          width: 30,
                                          height: 30),
                                      Image.asset(
                                          "assets/images/explore/play.png",
                                          width: 20,
                                          height: 20),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                      Container(
                        // ignore: prefer_const_constructors
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        width: 230,
                        height: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              height: 200,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                      "assets/images/explore/todaylearning.png"),
                                  SizedBox(height: 10),
                                  Text(
                                    "What happens when nature go viral?",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/explore/mat.png",
                                          width: 50,
                                          height: 50),
                                      Text("200"),
                                      Image.asset(
                                          "assets/images/explore/primary.png",
                                          width: 30,
                                          height: 30),
                                      Image.asset(
                                          "assets/images/explore/play.png",
                                          width: 20,
                                          height: 20),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                      Container(
                        // ignore: prefer_const_constructors
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        width: 230,
                        height: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              height: 200,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(
                                      "assets/images/explore/todaylearning.png"),
                                  SizedBox(height: 10),
                                  Text(
                                    "What happens when nature go viral?",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/explore/mat.png",
                                          width: 50,
                                          height: 50),
                                      Text("200"),
                                      Image.asset(
                                          "assets/images/explore/primary.png",
                                          width: 30,
                                          height: 30),
                                      Image.asset(
                                          "assets/images/explore/play.png",
                                          width: 20,
                                          height: 20),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
