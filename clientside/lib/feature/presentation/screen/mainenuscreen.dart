import 'package:clientside/feature/presentation/screen/createroom.dart';
import 'package:clientside/feature/presentation/screen/joinroomscreen.dart';
import 'package:clientside/feature/presentation/widget/cutombutton.dart';
import 'package:clientside/utilis.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  static String routename="/main-menu";
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(onTap: ()=> createRoom(context), text: "Create Room"),
        const SizedBox(
          height: 20,
        ),
        CustomButton(onTap: () =>joinRoom(context), text: "Join Room")
      ],
    );

  }


  void  createRoom (BuildContext context){
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }  void  joinRoom (BuildContext context){
    Navigator.pushNamed(context, JoinRoom.routeName);
  }
}
