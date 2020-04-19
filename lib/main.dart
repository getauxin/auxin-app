import 'package:auxin/pages/home.dart';
import 'package:auxin/pages/bookmarks.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool homeselected = true;
  bool bookmarkselected = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(0, 0, 0, 1),
        child: Column(children: <Widget>[
          Container(
            height: SizeConfig.blockSizeVertical * 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 17,
                        ),
                        Text(
                          'AUXIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.blockSizeVertical * 4),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical * 4),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 5,
                                    0,
                                    SizeConfig.blockSizeHorizontal * 3,
                                    0),
                                child: FlatButton(
                                  color: homeselected ? null : Colors.pink,
                                  onPressed: () => setState(() => {
                                        homeselected = true,
                                        bookmarkselected = false
                                      }),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.blockSizeVertical * 1.7),
                                    child: Text('HOME',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                SizeConfig.blockSizeVertical *
                                                    2)),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.pink,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 3,
                                    0,
                                    SizeConfig.blockSizeHorizontal * 5,
                                    0),
                                child: FlatButton(
                                  color: homeselected ? Colors.pink : null,
                                  onPressed: () => setState(() => {
                                        homeselected = false,
                                        bookmarkselected = true
                                      }),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.blockSizeVertical * 1.7),
                                    child: Text('BOOKMARKS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                SizeConfig.blockSizeVertical *
                                                    2)),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.pink,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
                color: Color.fromRGBO(27, 27, 30, 0.9)),
          ),
          AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              child: homeselected ? Home() : Bookmark())
        ]),
      ),
    );
  }
}
