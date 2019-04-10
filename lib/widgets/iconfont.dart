import 'package:flutter/widgets.dart';

class IconFont {
  static const IconData arrow_up = const _MyIconData(0xe525);
  static const IconData arrow_down = const _MyIconData(0xe501);
  static const IconData message = const _MyIconData(0xe606);
  static const IconData xiecheng = const _MyIconData(0xe62b);
  static const IconData kefu = const _MyIconData(0xe64e);
  static const IconData person_center = const _MyIconData(0xe71b);
  static const IconData xingcheng = const _MyIconData(0xe603);
  static const IconData lvpai = const _MyIconData(0xe620);
  static const IconData search = const _MyIconData(0xe609);
}

class _MyIconData extends IconData {
  const _MyIconData(int codePoint) : super(codePoint, fontFamily: 'IconFont');
}