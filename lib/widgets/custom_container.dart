import 'package:flutter/material.dart' ;

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.icon, required this.text,  this.isSelected=false, this.onTap});
final IconData icon;
final String text;
final bool isSelected;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: isSelected?Color(0xff24263B):Color(0xff333244),
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
              children: [
                Icon(icon, size:60),
                Text(text,style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E)),)
        
              ]
        
        
          ),
        
        ),
      ),
    )
    ;
  }
}
