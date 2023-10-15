// import 'package:flutter/material.dart';
// import 'constant.dart';
// class MongodbInsert extends StatefulWidget {
//   const MongodbInsert({super.key});

//   @override
//   State<MongodbInsert> createState() => _MongodbInsertState();
// }

// class _MongodbInsertState extends State<MongodbInsert>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   var fullnameController = new TextEditingController();
//   var emailController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           Text(
//             'Insert',
//             style: TextStyle(fontSize: 22),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           TextField(
//             controller: fullnameController,
//             decoration: InputDecoration(labelText: "fullname"),
//           ),
//           TextField(
//             controller: emailController,
//             minLines: 3,
//             maxLines: 5,
//             decoration: InputDecoration(labelText: "email"),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Generate Data"),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Insert Data"),
//               ),
//             ],
//           )
//         ],
//       )),
//     );
//   }

//   void fakeData() {
//     setState(() {
//       fullnameController.text = "Hoang Minh Ngoc";
//       emailController.text = "";
//     });
//   }
// }
