import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screen_utils.dart';
import 'dart:ui' as ui;

class ScreenUtils {
  late Orientation orientation;
  late DeviceType deviceType;
  late ResponsiveType responsiveType;

  late double width;
  late double height;
  late double pixelRatio;
  late double textScaleFactor;
  late double statusBarHeight;
  late double bottomBarHeight;

  late double blockSizeHorizontal;
  late double blockSizeVertical;
  late double sp;

  late bool isMd;
  late bool isLg;
  late bool isSm;
  late bool isXl;
  late bool isXs;

  late Color primaryColor;
  late Color backgroundColor;

  /// [Takes Card Color]
  late Color surfaceColor;

  /// [Text Styles]
  late TextStyle headline;
  late TextStyle title;
  late TextStyle body;
  late TextStyle buttonTextStyle;

  late TextTheme textTheme;
  late ColorScheme colorScheme;
  late ThemeData themeData;
  late MediaQueryData mediaQueryData;

  void setPageTitle(BuildContext context, String title, {Color? primaryColor}) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
            label: title,
            primaryColor:
                (primaryColor ?? Theme.of(context).primaryColor).value));
  }

  ScreenUtils.init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    themeData = Theme.of(context);
    var window = WidgetsBinding.instance?.window ?? ui.window;

    textTheme = themeData.textTheme;
    colorScheme = themeData.colorScheme;

    height = mediaQueryData.size.height;
    width = mediaQueryData.size.width;

    blockSizeHorizontal = width / 100;
    blockSizeVertical = height / 100;

    pixelRatio = window.devicePixelRatio;
    statusBarHeight = window.padding.top / pixelRatio;
    bottomBarHeight = window.padding.bottom / pixelRatio;
    textScaleFactor = window.textScaleFactor;

    headline = themeData.textTheme.headline5!;
    title = themeData.textTheme.headline6!;
    body = themeData.textTheme.bodyText1!;
    buttonTextStyle = themeData.textTheme.button!;

    isXs = width < 576;
    isSm = width >= 576 && width < 768;
    isMd = width >= 768 && width < 992;
    isLg = width >= 992 && width < 1200;
    isXl = width >= 1200;

    primaryColor = themeData.primaryColor;
    backgroundColor = themeData.backgroundColor;
    surfaceColor = themeData.cardColor;

    orientation = mediaQueryData.orientation;
    responsiveType = getResponsiveType();
    deviceType = getDeviceType();
  }
  ResponsiveType getResponsiveType() {
    if (width >= 1200) {
      return ResponsiveType.xl;
    } else if (width >= 992 && width < 1200) {
      return ResponsiveType.lg;
    } else if (width >= 768 && width < 992) {
      return ResponsiveType.md;
    } else if (width >= 576 && width < 768) {
      return ResponsiveType.sm;
    }
    return ResponsiveType.xs;
  }

  DeviceType getDeviceType() {
    DeviceType deviceType;
    if (kIsWeb) {
      deviceType = DeviceType.web;
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          deviceType = DeviceType.android;
          break;
        case TargetPlatform.iOS:
          deviceType = DeviceType.ios;
          break;
        case TargetPlatform.windows:
          deviceType = DeviceType.windows;
          break;
        case TargetPlatform.macOS:
          deviceType = DeviceType.mac;
          break;
        case TargetPlatform.linux:
          deviceType = DeviceType.linux;
          break;
        case TargetPlatform.fuchsia:
          deviceType = DeviceType.fuschia;
          break;
      }
    }
    return deviceType;
  }
}
