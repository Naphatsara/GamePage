import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/api.dart';

class GuessAge extends StatefulWidget {
  const GuessAge({Key? key}) : super(key: key);

  @override
  _GuessAgeState createState() => _GuessAgeState();
}

class _GuessAgeState extends State<GuessAge> {
  final TextEditingController _controller = TextEditingController();
  int valueYear = 0;
  int valueMonth = 0;
  var _isLoading = false;
  var check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GUESS TEACHER AGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          child: !check
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'อายุอาจารย์',
                      style: GoogleFonts.prompt(
                          fontSize: 25.0, color: Colors.black),
                    ),
                    Container(
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            SpinBox(
                              decoration: InputDecoration(labelText: 'year'),
                              min: 1,
                              max: 100,
                              value: 0,
                              onChanged: (value_y) {
                                valueYear = value_y as int;
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            SpinBox(
                              decoration: InputDecoration(labelText: 'month'),
                              min: 0,
                              max: 11,
                              value: 0,
                              onChanged: (value_m) {
                                valueMonth = value_m as int;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightGreen, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  setState(() {
                                    _handleClickButton(valueYear, valueMonth);
                                  });
                                },
                                child: Text(' G U E S S ! '),
                              ),
                            ),
                          ],
                        )),
                  ],
                )
              : Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(
                        'ทายถูกต้อง!',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'อาจารย์อายุ 46 ปี 10 เดือน',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
              )),
    );
  }

  _handleClickButton(valueYear, valueMonth) async {
    var isLogin = await _login(valueYear, valueMonth);
    if (isLogin == null) return;
    var text = isLogin['text'];
    var value = isLogin['value'];
    print(valueYear);
    print(valueMonth);
    if (value == true) {
      check = true;
      //_showMaterialDialog('ผลการทาย', text);

    } else {
      _showMaterialDialog('ผลการทาย', text);
    }
  }

  Future<Map<String, dynamic>?> _login(valueYear, valueMonth) async {
    try {
      setState(() {
        _isLoading = true;
      });
      var isLogin = (await Api().submit(
              'guess_teacher_age', {'year': valueYear, 'month': valueMonth}))
          as Map<String, dynamic>; // as คือการ cast data
      //print('DATA: $isLogin');
      return isLogin;
    } catch (e) {
      print(e);
      _showMaterialDialog('ERROR', e.toString());
      return null;
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: Theme.of(context).textTheme.bodyText2),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
