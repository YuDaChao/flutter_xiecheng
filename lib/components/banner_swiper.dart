import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerSwiper extends StatefulWidget {
  final bannerList;

  @override
  _BannerSwiperState createState() => _BannerSwiperState();

  BannerSwiper(this.bannerList);
}

class _BannerSwiperState extends State<BannerSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: MediaQuery.of(context).size.width,
      child: Swiper(
        itemHeight: 260.0,
        autoplay: true,
        itemCount: widget.bannerList.length,
        pagination: SwiperPagination(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(bottom: 70.0, right: 20.0),
          builder: DotSwiperPaginationBuilder(
            color: Color.fromRGBO(250, 250, 250, 1),
            activeColor: Colors.white,
            size: 5.0
          )
        ),
        // control: SwiperControl(),
        itemBuilder: (BuildContext context, int index) {
          return _buildBannerImage(widget.bannerList[index]);
        },
      ),
    );
  }

  Widget _buildBannerImage(assetsImage) {
    return ClipPath(
      clipper: MyCliper(),
      child: Image.asset(
        assetsImage,
        fit: BoxFit.fill,
      ),
    );
  }
}


class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: Radius.elliptical(60.0, 10.0),
      rotation: 0
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
