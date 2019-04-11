import 'package:flutter/material.dart';

import '../widgets/iconfont.dart';

import './home_page.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;

  final Color _activeColor = Color.fromRGBO(37, 119, 227, 1);
  final Color _defaultColor = Color.fromRGBO(130, 130, 130, 1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: this._onTap,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  IconFont.xiecheng,
                  color: this.getActiveColor(0),
                ),
                title: Text('首页',
                    style: TextStyle(color: this.getActiveColor(0)))),
            BottomNavigationBarItem(
                icon: Icon(
                  IconFont.xingcheng,
                  color: this.getActiveColor(1),
                ),
                title: Text('行程',
                    style: TextStyle(color: this.getActiveColor(1)))),
            BottomNavigationBarItem(
                icon: Icon(
                  IconFont.lvpai,
                  color: this.getActiveColor(2),
                ),
                title: Text('旅拍',
                    style: TextStyle(color: this.getActiveColor(2)))),
            BottomNavigationBarItem(
                icon: Icon(
                  IconFont.kefu,
                  color: this.getActiveColor(3),
                ),
                title: Text('客服',
                    style: TextStyle(color: this.getActiveColor(3)))),
            BottomNavigationBarItem(
                icon: Icon(
                  IconFont.person_center,
                  color: this.getActiveColor(4),
                ),
                title:
                    Text('我的', style: TextStyle(color: this.getActiveColor(4))))
          ]),
    );
  }

  void _onTap(index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  Color getActiveColor(index) {
    return index == this._currentIndex ? _activeColor : _defaultColor;
  }
}
