import 'package:flutter/material.dart';
import 'package:auxin/size_config.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: null,
        height: 340,
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical * 3, 0,
              SizeConfig.blockSizeVertical * 3, 0),
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.blockSizeVertical * 2),
              Row(
                children: <Widget>[
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Expanded(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.blockSizeVertical * 5),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),
              Container(
                child: Row(children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Mucahit Azerbaijan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical * 3),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 2),
                          Text(
                            'hello@azerbaijan.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical * 3),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 1.3),
                          Text(
                            'Free Membership Tier',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical * 2),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical * 1.3),
                        ],
                      ),
                    ),
                  ),
                ]),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),
              Row(
                children: <Widget>[
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Expanded(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.blockSizeVertical * 5),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 1),
              Row(
                children: <Widget>[
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Expanded(
                    child: Text(
                      'Controls',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.blockSizeVertical * 3),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 0.75),
              Row(
                children: <Widget>[
                  SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                  Expanded(
                    child: Text(
                      'Enable Auxin automatically when watching a video.',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.blockSizeVertical * 2.6),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.pink,
                activeColor: Colors.pinkAccent,
                inactiveThumbColor: Colors.white70,
                inactiveTrackColor: Colors.white24,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ));
  }
}
