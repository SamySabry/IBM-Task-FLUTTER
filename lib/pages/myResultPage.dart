// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:task2/moduls/human.dart';

class MyResultPage extends StatefulWidget {
  //MyResultPage(Human person);

  MyResultPage(this.person);

  Human person;
 // Human get person => person;

  @override
  _MyResultPageState createState() => _MyResultPageState(person);

}

class _MyResultPageState extends State<MyResultPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

            appBar: AppBar(

              title: Text("RESULT"),
            ),
            backgroundColor: Colors.green,
            body:
            Column(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('normal',style: TextStyle(fontSize: 40,color: Colors.white),)
                  ,
                  Container(

                    color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget>[
                        Text(person.calculate().toInt().toString(),style: TextStyle(fontSize: 40,color: Colors.white),),
                        Center(child: Text('you are crazy man go to hell',style: TextStyle(fontSize: 40,color: Colors.white),))

                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    //  alignment: Alignment.bottomCenter,

                    child: FlatButton(
                      child: Text("back",style: TextStyle(fontSize: 30),),
                      onPressed: (){
                        Navigator.pop(context);
                        debugPrint("fff");
                      },
                    ),

                  )
                ]
            )

    );
  }

  _MyResultPageState(this.person);
  Human person;
}