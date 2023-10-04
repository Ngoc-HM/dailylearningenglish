import 'package:englishapp/pages/home/myhomepage.dart';
import 'package:flutter/material.dart';

class StartedTips extends StatefulWidget {
  const StartedTips({super.key, required this.title});
  final String title;
  @override
  State<StartedTips> createState() => _StartedTips();
}

class _StartedTips extends State<StartedTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFECE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFECE8),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/intro/appintrophoto.png',
                width: 383, height: 284),
            SizedBox(
              height: 20,
            ),
            Text(
              "Daily \n Learning English",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Various versions have evolved over \n the years, sometimes by accident, sometimes \n on purpose",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 343,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MyHomePage(
                                title: '',
                              )));
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
