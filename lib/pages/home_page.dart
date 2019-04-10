import 'package:flutter/material.dart';

import '../components/search_bar.dart';
import '../components/banner_swiper.dart';
import '../components/nav.dart';
import '../components/grid_nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bannerList = [
    'assets/images/b1.png',
    'assets/images/b2.png',
    'assets/images/b3.png',
    'assets/images/b4.png'
  ];

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 290.0,
              child: Stack(
                children: <Widget>[
                  BannerSwiper(bannerList),
                  Positioned(
                    top: topPadding,
                    child: SearchBar(),
                  ),
                  Positioned(
                    top: 200.0,
                    child: Nav(),
                  )
                ],
              ),
            ),
            GridNav([])
          ],
        ),
      ),
    );
  }
}
