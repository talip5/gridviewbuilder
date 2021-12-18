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
  List<String> listOutOfGame = [];
  List<String> delayedList=[];
  int listNumber = 0;
  int count = 0;
  var random = new Random();

  int listNumberSelected = 0;
  String title = 'GridViewBuilder';
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

  int cardSelected1 = 0;
  int cardSelected2 = 0;

  int cardContol0 = 0;
  int cardContol1 = 0;
  int cardContol2 = 0;
  int cardContol3 = 0;
  int cardContol4 = 0;
  int cardContol5 = 0;

  bool outOfGame0 = false;
  bool outOfGame1 = false;
  bool outOfGame2 = false;
  bool outOfGame3 = false;
  bool outOfGame4 = false;
  bool outOfGame5 = false;

  String cardName0 = 'card0';
  String cardName1 = 'card1';
  String cardName2 = 'card2';
  String cardName3 = 'card3';
  String cardName4 = 'card4';
  String cardName5 = 'card5';

  String name1 = '';
  String name2 = '';

  startFunction() {
    list = [];
    listRandomSelected = [];
    listOutOfGame = [];
    delayedList=[];
    listNumber = 0;
    count = 0;
    random = new Random();

    listNumberSelected = 0;
    title = 'GridViewBuilder';
    initial1 = true;

    pressCount0 = 0;
    pressCount1 = 0;
    pressCount2 = 0;
    pressCount3 = 0;
    pressCount4 = 0;
    pressCount5 = 0;
    pressCountSum = 0;

    number0 = 0;
    number1 = 0;
    number2 = 0;
    number3 = 0;
    number4 = 0;
    number5 = 0;

    selected0 = true;
    selected1 = true;
    selected2 = true;
    selected3 = true;
    selected4 = true;
    selected5 = true;

    label0 = '';
    label1 = '';
    label2 = '';
    label3 = '';
    label4 = '';
    label5 = '';

    changed0 = true;
    changed1 = true;
    changed2 = true;
    changed3 = true;
    changed4 = true;
    changed5 = true;

    textStyle = TextStyle(fontSize: 25.0);
    color0 = Colors.lightGreen;
    color1 = Colors.lightGreen;
    color2 = Colors.lightGreen;
    color3 = Colors.lightGreen;
    color4 = Colors.lightGreen;
    color5 = Colors.lightGreen;

    cardSelected1 = 0;
    cardSelected2 = 0;

    cardContol0 = 0;
    cardContol1 = 0;
    cardContol2 = 0;
    cardContol3 = 0;
    cardContol4 = 0;
    cardContol5 = 0;
    print('cardControl0 : $cardContol0');
    outOfGame0 = false;
    outOfGame1 = false;
    outOfGame2 = false;
    outOfGame3 = false;
    outOfGame4 = false;
    outOfGame5 = false;

    cardName0 = 'card0';
    cardName1 = 'card1';
    cardName2 = 'card2';
    cardName3 = 'card3';
    cardName4 = 'card4';
    cardName5 = 'card5';

    name1 = '';
    name2 = '';
    print('startFunction');
  }

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
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                onPressed: () {
                  setState(() {
                    print('xxxxxxxxxxxxxxxx');
                    startFunction();
                    listRandom();
                    listReduce();
                    pressCountSum = 0;
                    print(list);
                    print(listRandomSelected);
                  });
                },
                child: Text(
                  'Start',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                )),
            SizedBox(
              width: 30.0,
            ),
            Text(title),
          ],
        ),
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
                          if (outOfGame0 == false) {
                            if (pressCountSum < 2 || pressCount0 == 1) {
                              if (pressCount0 == 1 &&
                                  pressCountSum == 1 &&
                                  changed0 == false) {
                                changed0 = changed0;
                              } else {
                                changed0 = !changed0;
                              }
                            }
                            if (changed0 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount0 == 1) {
                                label0 = '';
                                color0 = Colors.lightGreen;
                                if (cardContol0 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol0 == 2) {
                                  cardSelected2 = 0;
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
                                if (changed0 == false && pressCount0 == 1) {
                                  pressCount0 = 1;
                                } else {
                                  pressCount0 = pressCount0 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName0);
                                  delayedList.add(cardName0);
                                }

                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[0];
                                  cardContol0 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[0];
                                  cardContol0 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();
                                        });

                                      });
                                    });
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                  }
                                }
                              }
                            }
                            //print('pressCount0 :$pressCount0');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed0 : $changed0');
                            print('cardContol0 : $cardContol0');
                            print('listOutOfGame : $listOutOfGame');
                          }
                          print('changed0 : $changed0');
                          print('pressCountSum : $pressCountSum');
                          print('pressCount0 : $pressCount0');
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
                          if (outOfGame1 == false) {
                            if (pressCountSum < 2 || pressCount1 == 1) {
                              if (pressCount1 == 1 &&
                                  pressCountSum == 1 &&
                                  changed1 == false) {
                                changed1 = changed1;
                              } else {
                                changed1 = !changed1;
                              }
                            }
                            if (changed1 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount1 == 1) {
                                label1 = '';
                                color1 = Colors.lightGreen;
                                if (cardContol1 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol1 == 2) {
                                  cardSelected2 = 0;
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
                                if (changed1 == false && pressCount1 == 1) {
                                  pressCount1 = 1;
                                } else {
                                  pressCount1 = pressCount1 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName1);
                                  delayedList.add(cardName1);
                                }
                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[1];
                                  cardContol1 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[1];
                                  cardContol1 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();
                                        });

                                      });
                                    });
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                  }
                                }
                              }
                            }
                            //print('pressCount1 :$pressCount1');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed1 : $changed1');
                            print('cardContol1 : $cardContol1');
                            print('listOutOfGame : $listOutOfGame');
                          }
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
                          if (outOfGame2 == false) {
                            if (pressCountSum < 2 || pressCount2 == 1) {
                              if (pressCount2 == 1 &&
                                  pressCountSum == 1 &&
                                  changed2 == false) {
                                changed2 = changed2;
                              } else {
                                changed2 = !changed2;
                              }
                            }
                            if (changed2 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount2 == 1) {
                                label2 = '';
                                color2 = Colors.lightGreen;
                                if (cardContol2 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol2 == 2) {
                                  cardSelected2 = 0;
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
                                if (changed2 == false && pressCount2 == 1) {
                                  pressCount2 = 1;
                                } else {
                                  pressCount2 = pressCount2 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName2);
                                  delayedList.add(cardName2);
                                }

                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[2];
                                  cardContol2 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[2];
                                  cardContol2 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();
                                        });

                                      });
                                    });
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                  }
                                }
                              }
                            }
                            //print('pressCount2 :$pressCount2');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed2 : $changed2');
                            print('cardContol2 : $cardContol2');
                            print('listOutOfGame : $listOutOfGame');
                          }
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
                          if (outOfGame3 == false) {
                            if (pressCountSum < 2 || pressCount3 == 1) {
                              if (pressCount3 == 1 &&
                                  pressCountSum == 1 &&
                                  changed3 == false) {
                                changed3 = changed3;
                              } else {
                                changed3 = !changed3;
                              }
                            }
                            if (changed3 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount3 == 1) {
                                label3 = '';
                                color3 = Colors.lightGreen;
                                if (cardContol3 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol3 == 2) {
                                  cardSelected2 = 0;
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
                                if (changed3 == false && pressCount3 == 1) {
                                  pressCount3 = 1;
                                } else {
                                  pressCount3 = pressCount3 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName3);
                                  delayedList.add(cardName3);
                                }

                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[3];
                                  cardContol3 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[3];
                                  cardContol3 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();
                                        });
                                        listOutOfGame.removeLast();
                                        print(listOutOfGame);
                                        listOutOfGame.removeLast();
                                        print(listOutOfGame);
                                      });
                                    });
                                  }
                                }
                              }
                            }
                            //print('pressCount3 :$pressCount3');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed3 : $changed3');
                            print('cardContol3 : $cardContol3');
                            print('listOutOfGame : $listOutOfGame');
                          }
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
                          if (outOfGame4 == false) {
                            if (pressCountSum < 2 || pressCount4 == 1) {
                              if (pressCount4 == 1 &&
                                  pressCountSum == 1 &&
                                  changed4 == false) {
                                changed4 = changed4;
                              } else {
                                changed4 = !changed4;
                              }
                            }
                            if (changed4 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount4 == 1) {
                                label4 = '';
                                color4 = Colors.lightGreen;
                                if (cardContol4 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol4 == 2) {
                                  cardSelected2 = 0;
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
                                if (changed4 == false && pressCount4 == 1) {
                                  pressCount4 = 1;
                                } else {
                                  pressCount4 = pressCount4 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName4);
                                  delayedList.add(cardName4);
                                }
                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[4];
                                  cardContol4 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[4];
                                  cardContol4 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('delayedList : $delayedList');
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        print('delayedList : $delayedList');
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;

                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;

                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();
                                        });

                                      });
                                    });
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                  }
                                }
                              }
                            }
                            //print('pressCount4 :$pressCount4');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed4 : $changed4');
                            print('cardContol4 : $cardContol4');
                            print('listOutOfGame : $listOutOfGame');
                          }
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
                          if (outOfGame5 == false) {
                            if (pressCountSum < 2 || pressCount5 == 1) {
                              if (pressCount5 == 1 &&
                                  pressCountSum == 1 &&
                                  changed5 == false) {
                                changed5 = changed5;
                              } else {
                                changed5 = !changed5;
                              }
                            }
                            if (changed5 == true) {
                              if (pressCountSum < 2 ||
                                  pressCountSum >= 0 ||
                                  pressCount5 == 1) {
                                label5 = '';
                                color5 = Colors.lightGreen;
                                if (cardContol5 == 1) {
                                  cardSelected1 = 0;
                                } else if (cardContol5 == 2) {
                                  cardSelected2 = 0;
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
                                if(changed5==false && pressCount5==1) {
                                  pressCount5 = 1;
                                }
                                else{
                                  pressCount5 = pressCount5 + 1;
                                  pressCountSum = pressCountSum + 1;
                                  listOutOfGame.add(cardName5);
                                  delayedList.add(cardName5);
                                }
                                if (pressCountSum == 1) {
                                  cardSelected1 = listRandomSelected[5];
                                  cardContol5 = 1;
                                } else if (pressCountSum == 2) {
                                  cardSelected2 = listRandomSelected[5];
                                  cardContol5 = 2;
                                  if (cardSelected2 == cardSelected1) {
                                    print('Same!!!!');
                                    delayedList.removeLast();
                                    delayedList.removeLast();
                                    pressCountSum = 0;
                                    int countName = listOutOfGame.length;
                                    switch (countName) {
                                      case 2:
                                        {
                                          name1 = listOutOfGame[0];
                                          name2 = listOutOfGame[1];
                                        }
                                        break;
                                      case 4:
                                        {
                                          name1 = listOutOfGame[2];
                                          name2 = listOutOfGame[3];
                                          break;
                                        }
                                      case 6:
                                        {
                                          name1 = listOutOfGame[4];
                                          name2 = listOutOfGame[5];
                                        }
                                        break;
                                      default:
                                        {}
                                        break;
                                    }
                                    switch (name1) {
                                      case 'card0':
                                        {
                                          print('card0 : $name1');
                                          outOfGame0 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name1');
                                          outOfGame1 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name1');
                                          outOfGame2 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name1');
                                          outOfGame3 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name1');
                                          outOfGame4 = true;
                                          name1 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name1');
                                          outOfGame5 = true;
                                          name1 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                    switch (name2) {
                                      case 'card0':
                                        {
                                          print('card0 : $name2');
                                          outOfGame0 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card1':
                                        {
                                          print('card1 : $name2');
                                          outOfGame1 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card2':
                                        {
                                          print('card2 : $name2');
                                          outOfGame2 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card3':
                                        {
                                          print('card3 : $name2');
                                          outOfGame3 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card4':
                                        {
                                          print('card4 : $name2');
                                          outOfGame4 = true;
                                          name2 = '';
                                        }
                                        break;
                                      case 'card5':
                                        {
                                          print('card5 : $name2');
                                          outOfGame5 = true;
                                          name2 = '';
                                        }
                                        break;
                                        defaullt:
                                        {
                                          print('not value');
                                        }
                                        break;
                                    }
                                  } else {
                                    print('not Same');
                                    print('cardSelected1 : $cardSelected1');
                                    print('cardSelected2 : $cardSelected2');
                                    print('listOutOfGame : $listOutOfGame');
                                    Future.delayed(Duration(seconds: 3),(){
                                      print('Ayni degil');
                                      setState(() {
                                        String outOfGameName0=delayedList[0];
                                        switch(outOfGameName0){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        String outOfGameName1=delayedList[1];
                                        switch(outOfGameName1){
                                          case 'card0':{
                                            label0 = '';
                                            color0 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount0=0;
                                            changed0=true;
                                          }
                                          break;
                                          case 'card1':{
                                            label1 = '';
                                            color1 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount1=0;
                                            changed1=true;
                                          }
                                          break;
                                          case 'card2':{
                                            label2 = '';
                                            color2 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount2=0;
                                            changed2=true;
                                          }
                                          break;
                                          case 'card3':{
                                            label3 = '';
                                            color3 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount3=0;
                                            changed3=true;
                                          }
                                          break;
                                          case 'card4':{
                                            label4 = '';
                                            color4 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount4=0;
                                            changed4=true;
                                          }
                                          break;
                                          case 'card5':{
                                            label5 = '';
                                            color5 = Colors.lightGreen;
                                            pressCountSum=0;
                                            pressCount5=0;
                                            changed5=true;
                                          }
                                          break;
                                        }
                                        Future.delayed(Duration(seconds: 1),(){
                                          delayedList.removeLast();
                                          delayedList.removeLast();

                                        });
                                      });
                                    });
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                    listOutOfGame.removeLast();
                                    print(listOutOfGame);
                                  }
                                }
                              }
                            }
                            //print('pressCount5 :$pressCount5');
                            //print('pressCountSum : $pressCountSum');
                            //print('changed5 : $changed5');
                            print('cardContol5 : $cardContol5');
                            print('listOutOfGame : $listOutOfGame');
                          }
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
