import 'package:flutter/material.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final bool withBack;
  const CoustomAppBar({super.key,  this.withBack=false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("BMi Calculator",style:TextStyle(
          fontWeight:FontWeight.w600,
          fontSize: 20,
          color: Colors.white)),
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
      leading: withBack?InkWell(child: Icon(Icons.arrow_back),onTap:(){
        Navigator.pop(context);
      },):null,



    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
