import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
int countnumber=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),

      ),
      body: Column(
 mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Count :",style: TextStyle(fontSize: 22),)),
          Text(countnumber.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    countnumber=countnumber+1;
                  });
                },
                child: Container(
                  height: 35,
                  width: 70,
                  color: Colors.blue,
                  child: Center(child: Text('+',style:
                  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    countnumber=countnumber-1;
                  });
                },
                child: Container(
                  height: 35,
                  width: 70,
                  color: Colors.blue,
                  child: Center(child: Text('-',style:
                  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
