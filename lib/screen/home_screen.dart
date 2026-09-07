import 'dart:math';

import 'package:firstproj/screen/result_screen.dart';
import 'package:flutter/material.dart';
import'package:firstproj/widgets/custom_app_bar.dart';
import '../widgets/custom_weight_age_container.dart';
import '../widgets/custom_container.dart';

class home_screen extends StatefulWidget {
   home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
bool isMale=true;
int height=150;
int weight=60;
int age=28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(),
      body: Padding( padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [

            Row(
             //ginder
            children: [

              CustomContainer(icon: Icons.male, text: 'male',isSelected: isMale,onTap:(){
                isMale=true;
                setState(()
                {

                });
              }),

              SizedBox(width: 18,),
              CustomContainer(icon: Icons.female, text: 'female',isSelected: !isMale,onTap:(){
                isMale=false;
                setState(()
                {

                });
              } )
            ],
            ),
            SizedBox(height:20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30) ,
              decoration: BoxDecoration(
                color:Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text("Height",style:  TextStyle(
                    color: Color(0xff8B8C9E),
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                  ),),

                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [Text(height.toString(),style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500 ),),Text("cm"),
    ],
                  ),

                      Slider(value: height.toDouble(),
                          max:300,
                          activeColor: Color(0xffE83D67),
                          inactiveColor: Colors.white,
                          onChanged: (e)
                      {
                        height=e.toInt()  ;
                        setState(()
                            {

                            });
                      }),


                                  ],
              ),

            ),
            SizedBox(height:20),
            Row(
              children: [
            CustomWeightAgeContainer(title: "Weight",
              value: weight, decrement: (){
              weight--;
              setState(() {
              });}               , increment: (){
             weight++;
             setState(() {

             });
            },) ,
          SizedBox(width:   10),
            CustomWeightAgeContainer(title: "Age",
              value: age, increment: (){
              age++;
              setState(() {

              });


            },
                decrement: (){
              age--;
              setState(() {

              });


    }





            ,)]),
            SizedBox(height:20),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(bimValue: weight/pow(height/100,2))));
                
              },
              child: Container(
                alignment: Alignment.center ,
                color: Color(0xffE83D67),
                height: 100,
                child: Text("Calculate",style: TextStyle(fontSize: 32,fontWeight:FontWeight.w600 ),),
              ),
            )



          ],
        ),
      )


    );
  }
}
