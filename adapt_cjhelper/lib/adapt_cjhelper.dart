library adapt_cjhelper;

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }


import 'package:flutter/material.dart';

class AdaptCJHelper {
  int designWidth;  /// design width
  int designHeight; /// design height
  static AdaptCJHelper instance = new AdaptCJHelper();
  static AdaptCJHelper getInstance() {
    return instance;
  }
  AdaptCJHelper({
    this.designWidth = 1080,
    this.designHeight = 1920,
  });

  static double _screenWidth;
  static double _screenHeight;
  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
  }

  get scaleWidth => _screenWidth / instance.designWidth;
  get scaleHeight => _screenHeight / instance.designHeight;

  setWidth(int width) => width * scaleWidth;    // result unit:dp
  setHeight(int height) => height * scaleHeight;// result unit:dp
}
