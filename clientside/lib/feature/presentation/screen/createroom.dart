import 'package:clientside/feature/domain/socketmethod.dart';
import 'package:clientside/feature/presentation/widget/customTextfield.dart';
import 'package:clientside/feature/presentation/widget/customtext.dart';
import 'package:clientside/feature/presentation/widget/cutombutton.dart';
import 'package:clientside/utilis.dart';
import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
 static String routeName="createroom";
   CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
   TextEditingController nameconteoller=TextEditingController();
   SocketMethod socketMethod=SocketMethod();

 @override
 void dispose() { 
  nameconteoller.dispose();
   super.dispose();
   
  
 }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(shadows: const [
               Shadow(
                blurRadius: 40,
                color: Colors.blue
              )
            ], 
            text: "Create Room", fontSize: 70),
            SizedBox(height: size*0.08,),
      CustomTextField(controller: nameconteoller ,
       hintext: "nick name"),
            SizedBox(height: size*0.08,),
   
      CustomButton(onTap: () => 
      socketMethod.createRoom(nameconteoller.text), text: "Create")
          ],
      
        ),
      ),
    );
  }
}