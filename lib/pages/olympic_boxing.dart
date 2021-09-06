import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OlympicBoxing extends StatefulWidget {
  const OlympicBoxing({Key? key}) : super(key: key);

  @override
  _OlympicBoxingState createState() => _OlympicBoxingState();
}

class _OlympicBoxingState extends State<OlympicBoxing> {
bool check1 = false;
bool check2 = false;
  var point = 0;
  var point1R = 0;
  var point1B = 0;

_doNothig(){
  setState(() {

  });
}
  _ButtonRed(){
    setState(() {
      point1R = 10;
      point1B = 9;
      check1 = !check1;
    });
  }
  _ButtonBlue(){
    setState(() {
      point1R = 9;
      point1B = 10;
      check1 = !check1;
    });
  }
  @override
  Widget build(BuildContext context) {
  if(check1 != check1){

  }
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 300.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.black,
                  width: 15.0,
                  height: 15.0,
                  child: Center(
                      child: Text(
                    "Women's Light (57-60kg) Semi-final",
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFFA00000),
                  size: 60.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/flag_ireland.png"),
                          width: 30.0,
                        ),
                        Text(
                          ' IRELAND',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'HARRINGTON Kellie Anne',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFF0000A0),
                  size: 60.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/flag_thailand.png"),
                          width: 30.0,
                        ),
                        Text(
                          ' THAILAND',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'SEESONDEE Sudaporn',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFFA00000),
                    width: 3.0,
                    height: 3.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF0000A0),
                    width: 3.0,
                    height: 3.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: check1 ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ROUND 1',
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              point1R.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            child: Text(
                              point1B.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
              : null
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: check1 ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ROUND 2',
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              point1R.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            child: Text(
                              point1B.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
                  : null
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: check1 ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ROUND 3',
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              point1R.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            child: Text(
                              point1B.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
              : null
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),Padding(
              padding: const EdgeInsets.all(2.0),
              child: check1 ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'TOTAL',
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              point1R.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 180.0,
                          ),
                          Container(
                            child: Text(
                              point1B.toString(),
                              style: TextStyle(fontSize: 23.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
                  : null
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    child: SizedBox(
                      width: 170.0,
                      child: ElevatedButton(
                        onPressed: (_ButtonRed),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFA00000)),
                        child: Icon(
                          Icons.person,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: 170.0,
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: (_ButtonBlue),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0000A0)),
                        child: Icon(
                          Icons.person,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
