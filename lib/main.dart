
import 'package:flutter/material.dart';
import 'package:untitled1/presentaion/MyApp.dart';
import 'package:untitled1/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSL();
  runApp(const MyApp());
}