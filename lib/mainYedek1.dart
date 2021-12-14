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

  bool changed = true;
  TextStyle textStyle = TextStyle(fontSize: 25.0);
  Color color0 = Colors.lightGreen;
  Color color1 = Colors.lightGreen;
  Color color2 = Colors.lightGreen;
  Color color3 = Colors.lightGreen;
  Color color4 = Colors.lightGreen;
  Color color5 = Colors.lightGreen;

  listRandom() {
    for (int i = 1; i <= 3; i++) {
      listNumber = random.nextInt(100);
      list.add(listNumber);
      list.add(listNumber);
    }
    for (int j = 0; j <= 5; j++) {
      print(list[j]);
    }
  }

  listReduce() {
    int cycle=6;
    for(int k=1; k<=cycle; k++) {
      count = list.length;
      int value = random.nextInt(count);
      int listValue = list[value];
      listRandomSelected.add(listValue);
      list.removeAt(value);
    }
    print(listRandomSelected.length);
    for(int m=0; m<=5; m++) {
      print(listRandomSelected[m]);
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label0 = '';
                          color0 = Colors.lightGreen;
                        } else {
                          label0 = listRandomSelected[0].toString();
                          color0 = Colors.deepPurpleAccent;
                        }
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label1 = '';
                          color1 = Colors.lightGreen;
                        } else {
                          label1 = listRandomSelected[1].toString();
                          color1 = Colors.deepPurpleAccent;
                        }
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label2 = '';
                          color2 = Colors.lightGreen;
                        } else {
                          label2 = listRandomSelected[2].toString();
                          color2 = Colors.deepPurpleAccent;
                        }
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label3 = '';
                          color3 = Colors.lightGreen;
                        } else {
                          label3 = listRandomSelected[3].toString();
                          color3 = Colors.deepPurpleAccent;
                        }
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label4 = '';
                          color4 = Colors.lightGreen;
                        } else {
                          label4 = listRandomSelected[4].toString();
                          color4 = Colors.deepPurpleAccent;
                        }
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
                        setState(() {});
                        changed = !changed;
                        if (changed == true) {
                          label5 = '';
                          color5 = Colors.lightGreen;
                        } else {
                          label5 = listRandomSelected[5].toString();
                          color5 = Colors.deepPurpleAccent;
                        }
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
