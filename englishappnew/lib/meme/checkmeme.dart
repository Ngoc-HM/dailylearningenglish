import 'package:flutter/material.dart';

class MeMe extends StatefulWidget {
  const MeMe({super.key});

  @override
  State<MeMe> createState() => _MeMeState();
}

class _MeMeState extends State<MeMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset("assets/meme.png"),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xFF865DFF).withOpacity(0.1),
                side: BorderSide(color: Color(0xFF865DFF), width: 3),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
