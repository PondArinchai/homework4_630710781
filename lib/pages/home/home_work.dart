import 'package:flutter/material.dart';

class Home_work extends StatefulWidget {
  const Home_work({Key? key}) : super(key: key);

  @override
  State<Home_work> createState() => Home_workState();
}




class Home_workState extends State<Home_work> {
  var Red1 = ''; var Red2 = ''; var Red3 = '';
  var Blue1 = ''; var Blue2 = ''; var Blue3 = '';
  var round1 = ''; var round2 = ''; var round3 = '';
  var ScoreRed = 0; var ScoreBlue = 0;
  var ResultRed = 0; var ResultBlue = 0;
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Futsal World Cup 2022'),
        backgroundColor: Color(0xff53131d),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 900,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Align(
                          child: Image.asset('',
                            width: 250,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Expanded(child: Container(color: Colors.black,
                        child: Center(
                          child: Text('Futsal World Cup Final 2022',
                            style: TextStyle(color: Colors.white, ),
                          ),
                        ),
                        height: 20.0,),),
                    ],
                  ),

                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Icon(Icons.person,color: Colors.green, size: 70.0),
                      Container(
                        child :Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('', height: 25,),
                                SizedBox(width: 12.0,),
                                Text('BRAZIL', style: TextStyle(fontSize: 20.0),),
                              ],
                            ),
                            SizedBox(height: 7.0,),
                            // Row(
                            //children: [
                            Text('Vinícius Júnior',style: TextStyle(fontSize: 18.0),)
                            //],
                            //),
                          ],
                        ),
                      ),


                      SizedBox(width: 1200,),
                      Row(
                        children: [
                          if(count == 3)
                            if(ResultRed > ResultBlue)
                              Icon(Icons.check,color: Colors.lightGreen, size: 50.0),
                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 7.0,),

                  Row(
                    children: [
                      Icon(Icons.person,color: Color(0xFF0000A0), size: 70.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('', height: 25,),
                              SizedBox(width: 12.0,),
                              Text('THAILAND', style: TextStyle(fontSize: 20.0),),
                            ],
                          ),
                          SizedBox(height: 7.0,),
                          Row(
                            children: [
                              Text('มูฮัมหมัด อุสมานมูซา',style: TextStyle(fontSize: 18.0),)
                            ],
                          )
                        ],
                      ),

                      SizedBox(width: 1200,),
                      Row(
                        children: [
                          if(count == 3)
                            if(ResultBlue > ResultRed)
                              Icon(Icons.check,color: Colors.lightGreen, size: 50.0),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Expanded(child: Container(color: Colors.green, height: 8.0,)),
                      Expanded(child: Container(color: Color(0xFF0000A0), height: 8.0,)),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  //ScoreRound1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Red1, style: TextStyle(fontSize: 30.0,),),
                      SizedBox(width: 400,),
                      Text(round1),
                      SizedBox(width: 400,),
                      Text(Blue1,textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0,)),
                    ],
                  ),

                  SizedBox(height: 20,),

                  //ScoreRound2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Red2, style: TextStyle(fontSize: 30.0,),),
                      SizedBox(width: 400,),
                      Text( round2),
                      SizedBox(width: 400,),
                      Text(Blue2, style: TextStyle(fontSize: 30.0,)),
                    ],
                  ),

                  SizedBox(height: 20,),

                  //ScoreRound3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Red3,style: TextStyle(fontSize: 30.0,),),
                      SizedBox(width: 400,),
                      Text(round3),
                      SizedBox(width: 400,),
                      Text(Blue3,style: TextStyle(fontSize: 30.0,)),
                    ],

                  ),

                  SizedBox(height: 20,),

                  //ResultScore
                  if(count == 3)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(ResultRed.toString(),style: TextStyle(fontSize: 30.0,),),
                        SizedBox(width: 400,),
                        Text('RESULT'),
                        SizedBox(width: 400,),
                        Text(ResultBlue.toString(),style: TextStyle(fontSize: 30.0,)),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 150,),
              //Button

              Row(
                children: [
                  //ScoreRed
                  if(count < 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          count += 1;
                          setState(() {
                            if(count == 1){
                              Red1 = '10';
                              Blue1 = '9';
                              round1 = 'ROUND 1';
                              ScoreRed += 10;
                              ScoreBlue += 9;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                            else if(count == 2){
                              Red2 = '10';
                              Blue2 = '9';
                              round2 = 'ROUND 2';
                              ScoreRed += 10;
                              ScoreBlue += 9;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                            else if(count == 3){
                              Red3 = '10';
                              Blue3 = '9';
                              round3 = 'ROUND 3';
                              ScoreRed += 10;
                              ScoreBlue += 9;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                          });
                        },
                        child: Icon(Icons.person),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.green,
                        ),
                      ),
                    ),
                  SizedBox(width: 5,),

                  //ScoreBlue
                  if(count < 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          count += 1;
                          setState(() {
                            if(count == 1){
                              Red1 = '9';
                              Blue1 = '10';
                              round1 = 'ROUND 1';
                              ScoreRed += 9;
                              ScoreBlue += 10;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                            else if(count == 2){
                              Red2 = '9';
                              Blue2 = '10';
                              round2 = 'ROUND 2';
                              ScoreRed += 9;
                              ScoreBlue += 10;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                            else if(count == 3){
                              Red3 = '9';
                              Blue3 = '10';
                              round3 = 'ROUND 3';
                              ScoreRed += 9;
                              ScoreBlue += 10;
                              ResultRed = ScoreRed;
                              ResultBlue = ScoreBlue;
                            }
                          });
                        },
                        child: Icon(Icons.person),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Color(0xFF0000A0),
                        ),
                      ),
                    ),

                  //ResultScore
                  if(count == 3)
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            Red1 = ''; Red2 = ''; Red3 = '';
                            Blue1 = ''; Blue2 = ''; Blue3 = '';
                            round1 = ''; round2 = ''; round3 = '';
                            ScoreBlue = 0; ScoreRed = 0;
                            ResultBlue = 0; ResultRed = 0;
                            count = 0;
                          });
                        },
                        child: Icon(Icons.close),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.black,
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}