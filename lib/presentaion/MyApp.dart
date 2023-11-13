import 'package:flutter/material.dart';
import 'package:untitled1/presentaion/navigation/app_router.dart';



final appKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) =>  MaterialApp.router(
  key: appKey,
  routerConfig: buildRouter(context),
  theme: appTheme,
  );
}

final appTheme = ThemeData(
  fontFamily: 'AppFont',
);
