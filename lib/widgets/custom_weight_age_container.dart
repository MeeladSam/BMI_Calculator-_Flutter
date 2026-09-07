import 'package:flutter/material.dart';

class CustomWeightAgeContainer extends StatelessWidget {
  const CustomWeightAgeContainer({super.key, required this.title, required this.value,  this.decrement, this.increment});
final String title;
final int value;
final void Function()? decrement;
  final void Function()? increment;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(24) ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff333244)
        ),
        child:
        Column(
          children: [
            Text(title, style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E),
                fontWeight: FontWeight.w300),),
            Text(value.toString(),style: TextStyle(fontSize: 40,color: Colors.white,
                fontWeight: FontWeight.w700),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton.small(onPressed: decrement,
                child: Icon(Icons.remove),
                  backgroundColor: Color(0xff8B8C9E),
                  shape: CircleBorder(
                    side: BorderSide(color : Color(0xff8B8C9E))


                  )


                ),
                FloatingActionButton.small(onPressed: increment,
                    child: Icon(Icons.add),
                    backgroundColor: Color(0xff8B8C9E),
                    shape: CircleBorder(
                        side: BorderSide(color : Color(0xff8B8C9E))


                    )


                ),
              ],
            )



          ],
        ),


      ),
    );
  }
}
