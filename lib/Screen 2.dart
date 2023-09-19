import 'package:flutter/material.dart';
import 'package:project_4/task8.dart';

// ignore: must_be_immutable
class RECALCULATE extends StatelessWidget {
  
  String Gender;
  double Height;
  int Weight;
  int Age;
  double Result;
  
  
 RECALCULATE({required this.Age, required this.Height, required this.Weight,required this.Gender,required this.Result});
  

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
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Text(
              " Your Result ",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Color(0xff111427),
                ),
                height: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender : $Gender",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Height : ${Height.toInt()}",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Weight :$Weight ",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Age :$Age",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        
                        "Result =  ${Result.round()}; ",
                        style: TextStyle(fontSize: 35, color: Colors.green),
                      ),
                    ]),
              ),
            ),
            Container(
                width: double.infinity,
                height: 60,
                color: Color(0xffd93558),
                child: MaterialButton(
                  onPressed: () {
                    //double result = weight / pow(height, 2);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BMICALCULATOR()));
                  },
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ))
          ],
        ),
      ) ,
    ) ;
  }
}