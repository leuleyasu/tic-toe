import 'package:clientside/feature/presentation/screen/createroom.dart';
import 'package:clientside/feature/presentation/screen/joinroomscreen.dart';
import 'package:clientside/feature/presentation/screen/mainenuscreen.dart';
import 'package:clientside/utilis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor
      ),
      home: const MainMenu(),
      initialRoute:  MainMenu.routename,
      routes: {
        MainMenu.routename:(context) => const MainMenu(),
        CreateRoomScreen.routeName:(context) => CreateRoomScreen(),
        JoinRoom.routeName:(context) => JoinRoom()
      },
    );
  }
}
