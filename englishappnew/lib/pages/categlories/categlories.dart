import 'package:englishappnew/pages/test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';

class Categluries extends StatefulWidget {
  const Categluries({super.key});
  @override
  State<Categluries> createState() => _CategluriesState();
}

class _CategluriesState extends State<Categluries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Guardian'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Test()));
              },
              child: const Text('Go to Test')),
        ],
      ),
    );
  }
}
