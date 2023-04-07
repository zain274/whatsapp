import 'package:flutter/material.dart';
import 'package:whatsappclone/view/whatapps.dart';


void main()
{
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: whatApps() ,
    );
  }
}