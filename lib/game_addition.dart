import 'package:flutter/material.dart';

class GameAddition extends StatefulWidget {
  const GameAddition({Key? key}) : super(key: key);

  @override
  _GameAdditionState createState() => _GameAdditionState();
}

class _GameAdditionState extends State<GameAddition> {
  var add = 0;
  bool winner = false;
  bool whoTurn = true;

  @override
  Widget build(BuildContext context) {
    if (add >= 20) {
      winner = !winner;
    }
    _handleGame() {
      setState(() {
        {
          winner = false;
          add = 0;
          Text(add.toString(), style: TextStyle(fontSize: 100));
        }
      });
    }

    _doNothing() {
      setState(() {});
    }

    _addNumber1() {
      setState(() {
        add = add + 1;
        whoTurn = !whoTurn;
      });
    }

    _addNumber2() {
      setState(() {
        add = add + 2;
        whoTurn = !whoTurn;
      });
    }

    _addNumber3() {
      setState(() {
        add = add + 3;
        whoTurn = !whoTurn;
      });
    }

    var showStar = 20 - add;

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit
                  .fill, // ยืดเต็มพื้นที่โดยไม่สนใจสัดส่วนของภาพ หรือใช้ BoxFit.cover เพื่อยืดให้เต็มและคงสัดส่วนของภาพไว้ แต่บางส่วนของภาพอาจถูก crop
            ),
          ),
          child: SafeArea(
            // ไม่ให้ layout ไปอยู่ตรงส่วน status bar หรือ notch
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (whoTurn && !winner ? _addNumber3 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: Text(
                              '3',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (whoTurn && !winner ? _addNumber2 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (whoTurn && !winner ? _addNumber1 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: !winner
                              ? Center(
                                  child: Column(
                                    children: [
                                      for (int i = 0; i < add; i++)
                                        Icon(
                                          Icons.star,
                                          size: 20.0,
                                          color: Colors.deepPurple,
                                        ),
                                      for (int i = 0; i < showStar; i++)
                                        Icon(
                                          Icons.star_border,
                                          size: 20.0,
                                          color: Colors.deepPurple,
                                        )
                                    ],
                                  ),
                                )
                              : null,
                        ),
                      ),
                      Expanded(
                        flex: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: !winner
                                  ? IconButton(
                                      onPressed: whoTurn && !winner
                                          ? _doNothing
                                          : null,
                                      icon: Icon(Icons.keyboard_arrow_up),
                                      iconSize: 75.0,
                                    )
                                  : null,
                            ),
                            Center(
                              child: !winner
                                  ? Text(
                                      add.toString(),
                                      style: TextStyle(fontSize: 100.0),
                                    )
                                  : Column(
                                      children: [
                                        Center(
                                          child: whoTurn
                                              ? Text(
                                                  'BLUE\nwin!',
                                                  style:
                                                      TextStyle(fontSize: 70.0),
                                                )
                                              : Text(
                                                  'RED\nwin!',
                                                  style:
                                                      TextStyle(fontSize: 70.0),
                                                ),
                                        ),
                                        OutlinedButton(
                                          onPressed: _handleGame,
                                          child: Text(
                                            'NEW GAME',
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        )
                                      ],
                                    ),
                            ),
                            Center(
                              child: !winner
                                  ? IconButton(
                                      onPressed: whoTurn && !winner
                                          ? null
                                          : _doNothing,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 75.0,
                                    )
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (!whoTurn && !winner ? _addNumber1 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent),
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (!whoTurn && !winner ? _addNumber2 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent),
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          child: ElevatedButton(
                            onPressed:
                                (!whoTurn && !winner ? _addNumber3 : null),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent),
                            child: Text(
                              '3',
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Your widget tree
          )),
    );
  }
}
