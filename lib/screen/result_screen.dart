import 'package:firstproj/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bimValue});

  final double bimValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(withBack: true,),

      body: Padding(padding: EdgeInsets.all(16),

      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Text("Your Result: ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
          SizedBox(height: 20,),
          Container( 
            width: double.infinity,
            padding: EdgeInsets.all(40) ,
            decoration:
            BoxDecoration(
              color: Color(0xff333244),
              borderRadius:BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: 
            Column(
              children: [
                Text(bmiStatus(),style: TextStyle(fontSize:20 ,
                    fontWeight:FontWeight.w700,
                    color: Colors.green),),
                Text(bimValue.toStringAsFixed(2) ,style: TextStyle(fontSize: 64,fontWeight: FontWeight.w700),),
                Text("You hava A ${bmiStatus()} Body Weight Good Job.",style: TextStyle(color: Color(0xff8B8C9E),
                fontSize: 16,fontWeight: FontWeight.w500),)

                
              ],
            ),
            
          )



        ],


      )

        ,),





    );
  }
  String bmiStatus(){
    if(bimValue<=18.4){
      return "under weight";
    }else if (bimValue>=18.5 && bimValue<=24.9){
      return "normal";
    }else if(bimValue>=25 && bimValue<=39){
      return "over weight";
    }else{
      return "obsese";
    }
  }


}
