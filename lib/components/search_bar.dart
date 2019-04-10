import 'package:flutter/material.dart';

import '../widgets/iconfont.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0),
      width: MediaQuery.of(context).size.width,
      height: 44.0,
      child: Row(
        children: <Widget>[
          _buildLocation(),
          _buildSearchInput(),
          _buildMessage(),
        ],
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: <Widget>[
          Text('北京',
              style:
                  TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500)),
          Icon(
            IconFont.arrow_down,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _buildSearchInput() {
    return Expanded(
      flex: 1,
      child: Container(
        height: 35.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, .08), offset: Offset(1.0, 2.0))]),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 6.0, right: 8.0),
              child: Icon(Icons.search, color: Colors.blue[200],),
            ),
            Text('白云深处的边寨风光',
            style: TextStyle(fontSize: 18.0, color: Color.fromRGBO(102, 102, 102, 1)),)
          ],
        ),
      ),
    );
  }

  Widget _buildMessage() {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 20.0),
      child: Icon(IconFont.message, color: Colors.white),
    );
  }
}
