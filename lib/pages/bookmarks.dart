import 'package:auxin/size_config.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
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
            SizedBox(
              height: SizeConfig.blockSizeHorizontal * 3,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Bookmarks',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.blockSizeVertical * 5),
                  ),
                  flex: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
