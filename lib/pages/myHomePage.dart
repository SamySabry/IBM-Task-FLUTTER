import 'package:flutter/material.dart';
import 'package:task2/moduls/human.dart';

import 'myResultPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }

//_MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  double _valueHieght = 20;
  double _valueWieght = 20;
  double _valueAge = 20;
  bool isMale = true;
  Human person = Human();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
       // backgroundColor: Colors.,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    height: 120,
                    width: 150,
                    color: Colors.blueGrey,
                    child: FlatButton(
                      onPressed: () {
                        person.isMale = true;
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.accessibility,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text(
                            "male",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(12),
                    child: Container(
                      height: 120,
                      width: 150,
                      color: Colors.blueGrey,
                      child: FlatButton(
                        onPressed: () {
                          person.isMale = false;
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.accessibility,
                              size: 80,
                              color: Colors.white,
                            ),
                            Text(
                              "female",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              height: 150,
              width: 300,
              color: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        person.valueHieght.toInt().toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    label: person.valueHieght.toInt().toString(),
                    min: 0,
                    max: 200,
                    divisions: 200,
                    value: person.valueHieght,
                    onChanged: (double val) {
                      setState(() {
                        person.valueHieght = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    height: 135,
                    width: 160,
                    color: Colors.blueGrey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          person.valueWieght.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Center(
                          //   color: Colors.limeAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                ////////////////////////////////////////////////////////////))))))))))00
                                width: 80,
                                //padding:  EdgeInsets.only(left: 10,),

                                child: CircleAvatar(
                                  radius: 30,
                                  child: GestureDetector(
                                    child: Icon(
                                      Icons.add,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        person.valueWieght++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                ////////////////////////////////////////////////////////////))))))))))00
                                width: 80,

                                child: CircleAvatar(
                                  radius: 30,
                                  child: GestureDetector(
                                    child: Icon(
                                      Icons.add,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        person.valueWieght--;
                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 135,
                      width: 160,
                      color: Colors.blueGrey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            person.valueAge.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Center(
                            //   color: Colors.limeAccent,
                            child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  ////////////////////////////////////////////////////////////))))))))))00
                                  width: 80,
                                  //padding:  EdgeInsets.only(left: 10,),

                                  child: CircleAvatar(
                                    radius: 30,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          person.valueAge++;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  ////////////////////////////////////////////////////////////))))))))))00
                                  width: 80,

                                  child: CircleAvatar(
                                    radius: 30,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.add,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          person.valueAge--;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            color: Colors.red,
            //  alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 70,
            child: FlatButton(
              child: Text(
                "calculate",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyResultPage(person);
                }));
                debugPrint("fff");
              },
            ),
          ),
        ],
      ),
    );
  }
}
