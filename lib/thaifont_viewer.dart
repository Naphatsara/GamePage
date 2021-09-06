import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontViewer extends StatefulWidget {
  const FontViewer({Key? key}) : super(key: key);

  @override
  _FontViewerState createState() => _FontViewerState();
}

class _FontViewerState extends State<FontViewer> {
  bool check = true;
  var text = 'การเดินทางขากลับคงจะเหงาน่าดู';
  var nameFont = 'Font: Kanit';
  var f = 1;

  _changeFontKanit(){
    setState(() {
      f = 1;
      nameFont = 'Font: Kanit';
    });
  }_changeFontPrompt(){
    setState(() {
      f = 2;
      nameFont = 'Font: Prompt';
    });
  }_changeFontSarabun(){
    setState(() {
      f = 3;
      nameFont = 'Font: Sarabun';
    });
  }_changeFontPattaya(){
    setState(() {
      f = 4;
      nameFont = 'Font: Pattaya';
    });
  }_changeFontSriracha(){
    setState(() {
      f = 5;
      nameFont = 'Font: Sriracha';
    });
  }_changeFontChonburi(){
    setState(() {
      f = 6;
      nameFont = 'Font: Chonburi';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'THAI FONT VIEWER',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if(f == 1)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.kanit(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),if(f == 2)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.prompt(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),if(f == 3)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.sarabun(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),if(f == 4)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.pattaya(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),if(f == 5)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.sriracha(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),if(f == 6)
                  Center(
                    child: Text(text,
                        style: GoogleFonts.chonburi(fontSize: 50.0,color: Colors.black),
                        textAlign: TextAlign.center)
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  nameFont,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          // สีเงา
                          offset: Offset(2, 4),
                          // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                        )
                      ]),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontKanit,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Kanit',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontPrompt,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Prompt',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontSarabun,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Sarabun',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontPattaya,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Pattaya',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontSriracha,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Sriracha',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: _changeFontChonburi,
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              child: Text(
                                'Chonburi',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                          ),
                        ],
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
