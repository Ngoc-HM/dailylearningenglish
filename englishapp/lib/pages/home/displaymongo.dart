// import 'package:flutter/material.dart';
// import 'dart:async';

// class MongoInsert extends StatefulWidget {
//   final Future<List<String>> future;

//   const MongoInsert({required this.future});

//   @override
//   State<MongoInsert> createState() => _MongoInsertState();
// }

// class _MongoInsertState extends State<MongoInsert> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: FutureBuilder(
//           future: widget.future,
//           builder: (context, AsyncSnapshot<List<String>> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else {
//               if (snapshot.hasData) {
//                 List<String> data = snapshot.data;
//                 int totalData = data.length;
//                 print("Hello World");
//                 return Text("Data found: $totalData");
//               } else {
//                 return Center(
//                   child: Text("No data found"),
//                 );
//               }
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
