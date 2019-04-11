import 'package:flutter/material.dart';

import '../components/search_bar.dart';
import '../components/banner_swiper.dart';
import '../components/nav.dart';
import '../components/grid_nav.dart';
import '../components/sub_nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bannerList = [
    'assets/images/b1.png',
    'assets/images/b2.png',
    'assets/images/b3.png',
    'assets/images/b4.png'
  ];

  final _subNavs = [
    {'image': 'assets/images/subnav01.png', 'title': '自由行'},
    {'image': 'assets/images/subnav02.png', 'title': 'WiFi电话卡'},
    {'image': 'assets/images/subnav03.png', 'title': '保险·签证'},
    {'image': 'assets/images/subnav04.png', 'title': '换钞·购物'},
    {'image': 'assets/images/subnav05.png', 'title': '当地向导'},
    {'image': 'assets/images/subnav06.png', 'title': '特价机票'},
    {'image': 'assets/images/subnav07.png', 'title': '礼品卡'},
    {'image': 'assets/images/subnav08.png', 'title': '申卡·借钱'},
    {'image': 'assets/images/subnav09.png', 'title': '旅拍'},
    {'image': 'assets/images/subnav10.png', 'title': '更多'},
  ];

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width / 1.7 + 30.0,
              child: Stack(
                children: <Widget>[
                  BannerSwiper(_bannerList),
                  Positioned(
                    top: topPadding,
                    child: SearchBar(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width / 1.7 - 50.0,
                    child: Nav(),
                  )
                ],
              ),
            ),
            GridNav([]),
            SubNav(_subNavs),
          ],
        ),
      ),
    );
  }
}
