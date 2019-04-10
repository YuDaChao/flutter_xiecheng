import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 24.0,
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, .08), offset: Offset(1.0, 2.0))
          ]),
      child: Row(
        children: <Widget>[
          _buildNavItem('assets/images/n1.png', '攻略·景点'),
          _buildNavItem('assets/images/n2.png', '门票·玩乐'),
          _buildNavItem('assets/images/n3.png', '美食林'),
          _buildNavItem('assets/images/n4.png', '周边游'),
          _buildNavItem('assets/images/n5.png', '赏花踏青'),
        ],
      ),
    );
  }

  Widget _buildNavItem(image, text) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
              )
            ),
          ),
          Text('$text', style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}
