import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

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
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> list = [];
  List<int> listRandomSelected = [];
  int listNumber = 0;
  int listNumberSelected = 0;
  int count = 0;

  String title = 'GridViewBuilder';
  var random = new Random();
  bool initial1 = true;

  int pressCount0 = 0;
  int pressCount1 = 0;
  int pressCount2 = 0;
  int pressCount3 = 0;
  int pressCount4 = 0;
  int pressCount5 = 0;
  int pressCountSum = 0;

  int number0 = 0;
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;
  int number4 = 0;
  int number5 = 0;

  bool selected0 = true;
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;
  bool selected4 = true;
  bool selected5 = true;

  String label0 = '';
  String label1 = '';
  String label2 = '';
  String label3 = '';
  String label4 = '';
  String label5 = '';

  bool changed0 = true;
  bool changed1 = true;
  bool changed2 = true;
  bool changed3 = true;
  bool changed4 = true;
  bool changed5 = true;

  TextStyle textStyle = TextStyle(fontSize: 25.0);
  Color color0 = Colors.lightGreen;
  Color color1 = Colors.lightGreen;
  Color color2 = Colors.lightGreen;
  Color color3 = Colors.lightGreen;
  Color color4 = Colors.lightGreen;
  Color color5 = Colors.lightGreen;

  int cardSelected1=0;
  int cardSelected2=0;

  int cardContol0=0;
  int cardContol1=0;
  int cardContol2=0;
  int cardContol3=0;
  int cardContol4=0;
  int cardContol5=0;

  listRandom() {
    for (int i = 1; i <= 3; i++) {
      listNumber = random.nextInt(100);
      list.add(listNumber);
      list.add(listNumber);
    }
    for (int j = 0; j <= 5; j++) {
      //print(list[j]);
    }
  }

  listReduce() {
    int cycle = 6;
    for (int k = 1; k <= cycle; k++) {
      count = list.length;
      int value = random.nextInt(count);
      int listValue = list[value];
      listRandomSelected.add(listValue);
      list.removeAt(value);
    }
    //print(listRandomSelected.length);
    for (int m = 0; m <= 5; m++) {
      //print(listRandomSelected[m]);
    }
  }

  @override
  void initState() {
    listRandom();
    listReduce();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: GridView.builder(
        primary: false,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          Widget widget;
          switch (index) {
            case 0:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color0),
                  onPressed: () {
                    setState(() {
                      if (pressCountSum < 2 || pressCount0 == 1) {
                        changed0 = !changed0;
                      }
                      if (changed0 == true) {
                        if (pressCountSum < 2 ||
                            pressCountSum >= 0 ||
                            pressCount0 == 1) {
                          label0 = '';
                          color0 = Colors.lightGreen;
                          if(cardContol0==1){
                            cardSelected1=0;
                          }
                          else if(cardContol0==2){
                            cardSelected2=0;
                          }
                          if (pressCount0 == 1) {
                            pressCount0 = pressCount0 - 1;
                            pressCountSum = pressCountSum - 1;
                          }
                        }
                      } else {
                        if (pressCountSum < 2) {
                          label0 = listRandomSelected[0].toString();
                          color0 = Colors.deepPurpleAccent;
                          pressCount0 = pressCount0 + 1;
                          pressCountSum = pressCountSum + 1;
                          if(pressCountSum==1){
                            cardSelected1=listRandomSelected[0];
                            cardContol0=1;
                          }
                          else if(pressCountSum==2){
                            cardSelected2=listRandomSelected[0];
                            cardContol0=2;
                            if(cardSelected2==cardSelected1){
                              print('Same!!!!');
                            }
                          }
                        }
                      }
                      print('pressCount0 :$pressCount0');
                      print('pressCountSum : $pressCountSum');
                      print('changed0 : $changed0');
                      print('cardContol0 : $cardContol0');
                    });
                  },
                  child: Text(
                    label0,
                    style: textStyle,
                  ),
                ),
              );
              break;
            case 1:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color1),
                  onPressed: () {
                    setState(() {
                      if (pressCountSum < 2 || pressCount1 == 1) {
                        changed1 = !changed1;
                      }
                      if (changed1 == true) {
                        if (pressCountSum < 2 ||
                            pressCountSum >= 0 ||
                            pressCount1 == 1) {
                          label1 = '';
                          color1 = Colors.lightGreen;
                          if(cardContol1==1){
                            cardSelected1=0;
                          }
                          else if(cardContol1==2){
                            cardSelected2=0;
                          }
                          if (pressCount1 == 1) {
                            pressCount1 = pressCount1 - 1;
                            pressCountSum = pressCountSum - 1;
                          }
                        }
                      } else {
                        if (pressCountSum < 2) {
                          label1 = listRandomSelected[1].toString();
                          color1 = Colors.deepPurpleAccent;
                          pressCount1 = pressCount1 + 1;
                          pressCountSum = pressCountSum + 1;
                          if(pressCountSum==1){
                            cardSelected1=listRandomSelected[1];
                            cardContol1=1;
                          }
                          else if(pressCountSum==2){
                            cardSelected2=listRandomSelected[1];
                            cardContol1=2;
                            if(cardSelected2==cardSelected1){
                              print('Same!!!!');
                            }
                          }
                        }
                      }
                      print('pressCount1 :$pressCount1');
                      print('pressCountSum : $pressCountSum');
                      print('changed1 : $changed1');
                      print('cardContol1 : $cardContol1');
                    });
                  },
                  child: Text(label1, style: textStyle),
                ),
              );
              break;
            case 2:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color2),
                  onPressed: () {
                    setState(() {
                    if (pressCountSum < 2 || pressCount2 == 1) {
                      changed2 = !changed2;
                    }
                    if (changed2 == true) {
                      if (pressCountSum < 2 ||
                          pressCountSum >= 0 ||
                          pressCount2 == 1) {
                        label2 = '';
                        color2 = Colors.lightGreen;
                        if(cardContol2==1){
                          cardSelected1=0;
                        }
                        else if(cardContol2==2){
                          cardSelected2=0;
                        }
                        if (pressCount2 == 1) {
                          pressCount2 = pressCount2 - 1;
                          pressCountSum = pressCountSum - 1;
                        }
                      }
                    } else {
                      if (pressCountSum < 2) {
                        label2 = listRandomSelected[2].toString();
                        color2 = Colors.deepPurpleAccent;
                        pressCount2 = pressCount2 + 1;
                        pressCountSum = pressCountSum + 1;
                        if(pressCountSum==1){
                          cardSelected1=listRandomSelected[2];
                          cardContol2=1;
                        }
                        else if(pressCountSum==2){
                          cardSelected2=listRandomSelected[2];
                          cardContol2=2;
                          if(cardSelected2==cardSelected1){
                            print('Same!!!!');
                          }
                        }
                      }
                    }
                    print('pressCount2 :$pressCount2');
                    print('pressCountSum : $pressCountSum');
                    print('changed2 : $changed2');
                    print('cardContol2 : $cardContol2');
                    });
                  },
                  child: Text(label2, style: textStyle),
                ),
              );
              break;
            case 3:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color3),
                  onPressed: () {
                    setState(() {
                    if (pressCountSum < 2 || pressCount3 == 1) {
                      changed3 = !changed3;
                    }
                    if (changed3 == true) {
                      if (pressCountSum < 2 ||
                          pressCountSum >= 0 ||
                          pressCount3 == 1) {
                        label3 = '';
                        color3 = Colors.lightGreen;
                        if(cardContol3==1){
                          cardSelected1=0;
                        }
                        else if(cardContol3==2){
                          cardSelected2=0;
                        }
                        if (pressCount3 == 1) {
                          pressCount3 = pressCount3 - 1;
                          pressCountSum = pressCountSum - 1;
                        }
                      }
                    } else {
                      if (pressCountSum < 2) {
                        label3 = listRandomSelected[3].toString();
                        color3 = Colors.deepPurpleAccent;
                        pressCount3 = pressCount3 + 1;
                        pressCountSum = pressCountSum + 1;
                        if(pressCountSum==1){
                          cardSelected1=listRandomSelected[3];
                          cardContol3=1;
                        }
                        else if(pressCountSum==2){
                          cardSelected2=listRandomSelected[3];
                          cardContol3=2;
                          if(cardSelected2==cardSelected1){
                            print('Same!!!!');
                          }
                        }
                      }
                    }
                    print('pressCount3 :$pressCount3');
                    print('pressCountSum : $pressCountSum');
                    print('changed3 : $changed3');
                    print('cardContol3 : $cardContol3');
                    });
                  },
                  child: Text(label3, style: textStyle),
                ),
              );
              break;
            case 4:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color4),
                  onPressed: () {
                    setState(() {
                    if (pressCountSum < 2 || pressCount4 == 1) {
                      changed4 = !changed4;
                    }
                    if (changed4 == true) {
                      if (pressCountSum < 2 ||
                          pressCountSum >= 0 ||
                          pressCount4 == 1) {
                        label4 = '';
                        color4 = Colors.lightGreen;
                        if(cardContol4==1){
                          cardSelected1=0;
                        }
                        else if(cardContol4==2){
                          cardSelected2=0;
                        }
                        if (pressCount4 == 1) {
                          pressCount4 = pressCount4 - 1;
                          pressCountSum = pressCountSum - 1;
                        }
                      }
                    } else {
                      if (pressCountSum < 2) {
                        label4 = listRandomSelected[4].toString();
                        color4 = Colors.deepPurpleAccent;
                        pressCount4 = pressCount4 + 1;
                        pressCountSum = pressCountSum + 1;
                        if(pressCountSum==1){
                          cardSelected1=listRandomSelected[4];
                          cardContol4=1;
                        }
                        else if(pressCountSum==2){
                          cardSelected2=listRandomSelected[4];
                          cardContol4=2;
                          if(cardSelected2==cardSelected1){
                            print('Same!!!!');
                          }
                        }
                      }
                    }
                    print('pressCount4 :$pressCount4');
                    print('pressCountSum : $pressCountSum');
                    print('changed4 : $changed4');
                    print('cardContol4 : $cardContol4');
                    });
                  },
                  child: Text(label4, style: textStyle),
                ),
              );
              break;
            default:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color5),
                  onPressed: () {
                    setState(() {
                    if (pressCountSum < 2 || pressCount5 == 1) {
                      changed5 = !changed5;
                    }
                    if (changed5 == true) {
                      if (pressCountSum < 2 ||
                          pressCountSum >= 0 ||
                          pressCount5 == 1) {
                        label5 = '';
                        color5 = Colors.lightGreen;
                        if(cardContol5==1){
                          cardSelected1=0;
                        }
                        else if(cardContol5==2){
                          cardSelected2=0;
                        }
                        if (pressCount5 == 1) {
                          pressCount5 = pressCount5 - 1;
                          pressCountSum = pressCountSum - 1;
                        }
                      }
                    } else {
                      if (pressCountSum < 2) {
                        label5 = listRandomSelected[5].toString();
                        color5 = Colors.deepPurpleAccent;
                        pressCount5 = pressCount5 + 1;
                        pressCountSum = pressCountSum + 1;
                        if(pressCountSum==1){
                          cardSelected1=listRandomSelected[5];
                          cardContol5=1;
                        }
                        else if(pressCountSum==2){
                          cardSelected2=listRandomSelected[5];
                          cardContol5=2;
                          if(cardSelected2==cardSelected1){
                            print('Same!!!!');
                          }
                        }
                      }
                    }
                    print('pressCount5 :$pressCount5');
                    print('pressCountSum : $pressCountSum');
                    print('changed5 : $changed5');
                    print('cardContol5 : $cardContol5');
                    });
                  },
                  child: Text(label5, style: textStyle),
                ),
              );
          }
          return widget;
        },
      )),
    );
  }
}