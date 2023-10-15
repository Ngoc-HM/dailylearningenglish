import 'package:englishapp/my_app.dart';
import 'package:englishapp/pages/connect/mongodb.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MongodbDatabase.connect();
  runApp(const MyApp());
}
