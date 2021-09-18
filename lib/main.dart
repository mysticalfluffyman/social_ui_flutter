import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool is_round1 = false;
  bool is_round2 = false;
  bool is_round3 = false;
bool toggle = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Color(0XFFbec9f3),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            height: height,
            width: width ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0XFF101014)),
            child: Row(
              children: [
                Container(
                  width: width * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0XFF101014),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Column(children: [
                        GestureDetector(
                        onTap: (){
                          setState(() {
                            is_round1 =!is_round1;
                            is_round2 =false;
                            is_round3 =false;
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              width: width * 0.035,
                              height: width * 0.035,
                              decoration:is_round1?  BoxDecoration(
                                shape: BoxShape.circle,
                                  color: Color(0XFF1c1b20),
                                 ):BoxDecoration(
                                shape: BoxShape.rectangle,
                                  color: Color(0XFF1c1b20),
                                  borderRadius: BorderRadius.circular(30)),
                              duration: Duration(milliseconds: 300),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/worldwide.svg',width: width*0.015,),
                                ),
                              ),
                            ),
                           is_round1? Container(width: width * 0.004,
                              height: width * 0.004,
                              decoration:  BoxDecoration(
                                boxShadow: [BoxShadow(spreadRadius:3 )],
                                shape: BoxShape.circle,
                                  color: Colors.red,
                                  ),):Container(width: 0,)
                          ],
                        ),
                      ),GestureDetector(
                        onTap: (){
                          setState(() {
                            is_round2 =!is_round2;
                            is_round3 =false;
                            is_round1 = false;
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              width: width * 0.035,
                              height: width * 0.035,
                              decoration:is_round2?  BoxDecoration(
                                shape: BoxShape.circle,
                                  color: Color(0XFF1c1b20),
                                 ):BoxDecoration(
                                shape: BoxShape.rectangle,
                                  color: Color(0XFF1c1b20),
                                  borderRadius: BorderRadius.circular(30)),
                              duration: Duration(milliseconds: 300),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/microphone.svg',width: width*0.015,),
                                ),
                              ),
                            ),
                             is_round2? Container(width: width * 0.004,
                              height: width * 0.004,
                              decoration:  BoxDecoration(
                                boxShadow: [BoxShadow(spreadRadius:3 )],
                                shape: BoxShape.circle,
                                  color: Colors.red,
                                  ),):Container(width: 0,)
                          ],
                        ),
                      ),GestureDetector(
                        onTap: (){
                          setState(() {
                            is_round3 =!is_round3;
                            is_round1 = false;
                            is_round2 = false;
                          });
                        },
                        child: Column(
                          children: [
                            AnimatedContainer(
                              width: width * 0.035,
                              height: width * 0.035,
                              decoration:is_round3?  BoxDecoration(
                                shape: BoxShape.circle,
                                  color: Color(0XFF1c1b20),
                                 ):BoxDecoration(
                                shape: BoxShape.rectangle,
                                  color: Color(0XFF1c1b20),
                                  borderRadius: BorderRadius.circular(30)),
                              duration: Duration(milliseconds: 300),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/newspaper.svg',width: width*0.015,),
                                ),
                              ),
                            ),
                            is_round3? Container(width: width * 0.004,
                              height: width * 0.004,
                              decoration:  BoxDecoration(
                                boxShadow: [BoxShadow(spreadRadius:3 )],
                                shape: BoxShape.circle,
                                  color: Colors.red,
                                  ),):Container(width: 0,)
                          ],
                        ),
                      ),
                     ],),
                    Column(
                      children: [
                         GestureDetector(
                       onTap: (){
                         setState(() {
                           toggle=!toggle;
                         });
                       },
                       child: AnimatedContainer(
                                width: width * 0.035,
                                height: height * 0.035,
                                decoration:  BoxDecoration(
                                  shape: BoxShape.rectangle,
                                    color: Color(0XFF1c1b20),
                                    borderRadius: BorderRadius.circular(20)),
                                duration: Duration(milliseconds: 500),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Align(
                                    alignment: toggle? Alignment.centerRight:Alignment.centerLeft,
                                    child: SvgPicture.asset(toggle?'assets/icons/sun.svg':'assets/icons/moon.svg',width: width*0.015,),
                                  ),
                                ),
                              ),
                     ),
                     AnimatedContainer(
                              width: width * 0.035,
                              height: width * 0.035,
                              decoration:BoxDecoration(
                                shape: BoxShape.rectangle,
                                  color: Color(0XFF1c1b20),
                                  borderRadius: BorderRadius.circular(20)),
                              duration: Duration(milliseconds: 300),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/setting.svg',width: width*0.015,color: Color(0XFFbec9f3),),
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              width: width * 0.035,
                              height: width * 0.035,
                              decoration:BoxDecoration(
                                shape: BoxShape.rectangle,
                                  color: Color(0XFF1c1b20),
                                  image: DecorationImage(image: AssetImage('assets/icons/octo.webp'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)),
                              duration: Duration(milliseconds: 300),
                              
                            ),
                      ],
                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
