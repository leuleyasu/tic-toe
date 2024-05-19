import 'package:clientside/feature/presentation/widget/customTextfield.dart';
import 'package:clientside/feature/presentation/widget/customtext.dart';
import 'package:clientside/feature/presentation/widget/cutombutton.dart';
import 'package:clientside/utilis.dart';
import 'package:flutter/material.dart';

class JoinRoom  extends StatefulWidget {
 static String routeName="JoinRoom";
   JoinRoom ({super.key}); 

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
   TextEditingController _namecontroller=TextEditingController();

   TextEditingController __gmaeIdcontroller=TextEditingController();

  @override
  void dispose() { 
    super.dispose();
    _namecontroller.dispose();
    __gmaeIdcontroller.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
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
              text: "Join Room", fontSize: 70),
              SizedBox(height: size.height*0.08,),
        CustomTextField(controller: _namecontroller , hintext: "nick name"),
        
              SizedBox(height: size.height*0.08,),
        
        CustomTextField(controller: __gmaeIdcontroller , 
        hintext: "Enter Game Id"),
       
        CustomButton(onTap: (){}, text: "Join")
            ],
        
          ),
        ),
      ));
  }}