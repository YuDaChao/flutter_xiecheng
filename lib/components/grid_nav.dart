import 'package:flutter/material.dart';

class GridNav extends StatefulWidget {
  final gridItems;
  @override
  _GridNavState createState() => _GridNavState();

  GridNav(this.gridItems);
}

class _GridNavState extends State<GridNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 65.0,
            decoration: BoxDecoration(
                // border: Border(bottom: BorderSide(width: 1.0, color: Colors.white)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(250, 89, 86, 1),
                  Color.fromRGBO(251, 134, 80, 1)
                ])),
            child: Row(
              children: <Widget>[
                _buildHotel('assets/images/gn1.png', '酒店'),
                _buildMinSu('assets/images/gn2.png', '民宿·客栈'),
                _buildJhj('assets/images/gn.png', '机票·火车票+酒店')
              ],
            ),
          ),
          Container(
            height: 65.0,
            margin: EdgeInsets.symmetric(vertical: 1.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(75, 143, 237, 1),
              Color.fromRGBO(83, 188, 237, 1)
            ])),
            child: Row(
              children: <Widget>[
                _buildHotel('assets/images/gn3.png', '机票'),
                _buildMinSu('assets/images/gn4.png', '火车票'),
                _buildItem('汽车·船票'),
                _buildItem('专车·租车'),
              ],
            ),
          ),
          Container(
            height: 65.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0)),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(52, 194, 170, 1),
                  Color.fromRGBO(108, 213, 87, 1)
                ])),
            child: Row(
              children: <Widget>[
                _buildHotel('assets/images/gn5.png', '旅游', tag: '11日会员日'),
                _buildMinSu('assets/images/gn6.png', '高铁游'),
                _buildItem('邮轮游'),
                _buildItem('定制游'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHotel(bgImage, title, { tag }) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            height: 65.0,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 12.0),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 1.0, color: Color.fromRGBO(242, 242, 242, 1)))),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              '$bgImage',
              width: 65.0,
            ),
          ),
          tag != null ? Positioned(
            top: 0,
            right: 0,
            child: _buildTag(tag),
          ) : Container()
        ],
      ),
    );
  }

  Widget _buildMinSu(bgImage, title) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            height: 65.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 1.0, color: Color.fromRGBO(242, 242, 242, 1)))),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 1,
            child: Image.asset(
              '$bgImage',
              width: 40.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildJhj(bgImage, title) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(
            height: 65.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 1.0, color: Color.fromRGBO(242, 242, 242, 1)))),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Color.fromRGBO(160, 84, 22, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              '$bgImage',
              width: 85.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(title) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            height: 65.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 1.0, color: Color.fromRGBO(242, 242, 242, 1)))),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(tag) {
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0))
      ),
      child: Text('$tag', style: TextStyle(color: Colors.red, fontSize: 10.0),),
    );
  }
}
