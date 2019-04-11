import 'package:flutter/material.dart';

class SubNav extends StatefulWidget {
  final List subNavs;

  @override
  _SubNavState createState() => _SubNavState();

  SubNav(this.subNavs);
}

class _SubNavState extends State<SubNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      margin: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 0.0,
        runSpacing: 10.0, // 行垂直间距
        children: widget.subNavs.map((item) => _buildSubNavItem(item)).toList(),
      ),
    );
  }

  Widget _buildSubNavItem(item) {
    return Container(
      width: MediaQuery.of(context).size.width / 5 - 6.0,
      alignment: Alignment.center,
      child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 4.0, top: 10.0),
          child: Image.asset(
            item['image'],
            width: 28.0,
            height: 28.0,
          ),
        ),
        Text(
          '${item['title']}',
          style: TextStyle(fontSize: 12.0),
        )
      ],
    ),
    );
  }
}
