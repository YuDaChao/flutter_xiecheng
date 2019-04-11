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
      height: 122.0,
      margin: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // 每行5列
          childAspectRatio: 1.0, // 显示区域宽高相等
          crossAxisSpacing: 10.0,
        ),
        itemCount: widget.subNavs.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 4.0),
                  child: Image.asset(widget.subNavs[index]['image'], width: 28.0, height: 28.0,),
                ),
                Text('${widget.subNavs[index]['title']}', style: TextStyle(fontSize: 12.0),)
              ],
            ),
          );
        },
      ),
    );
  }
}