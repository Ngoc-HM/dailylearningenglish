import 'package:flutter/material.dart';

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
      //resizeToAvoidBottomInset: false,
      //extendBody: true,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('           Explore', style: TextStyle(fontSize: 30)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Text('Explore', style: TextStyle(fontSize: 30)),
            Center(child: Image.asset('assets/images/explore/search.png')),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Entertain', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Science', style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        Text('Daily English', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Bisuness', style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(children: [
              Text(
                'Hot Categories',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 230),
              Image.asset('assets/images/home/next_icon.png'),
            ]),
          ],
        ),
      ),
    );
  }
}
