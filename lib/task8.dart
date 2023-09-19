import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_4/Screen%202.dart';

class BMICALCULATOR extends StatefulWidget {
   BMICALCULATOR({super.key});

  @override
  State<BMICALCULATOR> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BMICALCULATOR> {
 
  bool  isMale =true;
  String gender="Male";
  double height=180;
  int WEIGHT= 30;
  int AGE =10;
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0e21),
        title: Text("BMI CALCULATOR",
        style: TextStyle(
          color: Colors.white),),
        centerTitle: true,
        
      ),
      body: Column(
        children: [
          Expanded(child: Padding(padding:EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale=true;
                      gender="Male";
                    });
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isMale ?Color(0xffd23457) :Color(0xff111427),
                  ),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.male,
                    size: 70,
                    color: Colors.white,),
                    Text("MALE",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    )],
                  ),
                              ),
                )),
              SizedBox(
                width: 20,
              ),
             Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isMale=false;
                    gender="FEMale";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  isMale ?Color(0xff111427):Color(0xffd23457) ,
                  ),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.male,
                    size: 70,
                    color: Colors.white,),
                    Text("FEMALE",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    )],
                  ),
                ),
              )),

            ],
          ), )),
           Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
           child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Color(0XFF111427),
            ),
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT",
                style: TextStyle(color: Colors.white38,fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("${height.round()}",
                    style: TextStyle(color: Colors.white,fontSize: 50),),
                    Text("cm",
                    style: TextStyle(color: Colors.white38,fontSize: 20),),
                  ],
                  
                ),
                Slider(
                  thumbColor: Color(0XFFD93558),
                  activeColor: Colors.white,
                  value:height,
                  min:40,
                  max: 220, onChanged: (value){
                   setState(() {
                      height=value;
                   });
                })
              ],
            ),
           ),
           )),
Expanded(child: Padding(padding: EdgeInsets.all(8.0),
child: Row(
  children: [
    Expanded(child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff1111427)
      ),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("WEIGHT",
          style: TextStyle(fontSize: 20,color: Colors.white38),),
          Text("$WEIGHT",
          style: TextStyle(fontSize: 50,color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
              FloatingActionButton(
                heroTag: "widget",
                onPressed: (){
                setState(() {
                  WEIGHT --;
                });
              },
              child: Icon(Icons.remove),
              mini: true,),
              FloatingActionButton(
                heroTag: "wight++",
                onPressed:  (){
                setState(() {
                  WEIGHT ++;
                });
              },
              child: Icon(Icons.add),
              mini: true,

              ),
            ],
          ),
        ],
      ),
    )
    ),
    SizedBox(width: 20,),
    Expanded(child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff111427),
      ),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("AGE",
          style: TextStyle(fontSize: 20,color: Colors.white38),),
          Text("$AGE",
          style: TextStyle(fontSize: 50,color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: "age",
                onPressed: (){
                setState(() {
                  AGE --;
                });
              },
              child: Icon(Icons.remove),
              mini: true,),
              FloatingActionButton(
                heroTag: "age2",
                onPressed:  (){
                setState(() {
                  AGE ++;
                });
              },
              child: Icon(Icons.add),
              mini: true,

              ),
            ],
          ),
        ],
      ),
    ))
  ],
),
)


),
     Container(
      width: double.infinity,
      height: 60,
      color: Color(0xffd93558),
      child: MaterialButton(onPressed: (){
        double result=WEIGHT/pow(height/100, 2);
        print(result);
        Navigator.push(context, MaterialPageRoute(builder:(context) => RECALCULATE(Gender: gender,Age: AGE,Weight: WEIGHT,Height: height,Result: result,),));
        
      },
      child: Text("CALCULATE",style: TextStyle(fontSize: 25,color: Colors.white),),),
    
     )
        ],
      ),
    ) ;
  }
}