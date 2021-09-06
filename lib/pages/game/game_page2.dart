import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage3 extends StatefulWidget {
  const GamePage3({Key? key}) : super(key: key);

  @override
  _GamePage2State createState() => _GamePage2State();
}

class _GamePage2State extends State<GamePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/logo_number.png",
                      width: 240.0,
                    ),
                    Text(
                      'GUESS THE NUMBER',
                      style: GoogleFonts.kanit(fontSize: 22.0),
                    ),
                  ],
                ),
                Text('TEST'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue , width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text('GUESS'),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
