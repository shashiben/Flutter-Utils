import 'package:flutter/material.dart';
import 'package:flutter_utils/utils/screen_utils.dart';

class ScreenUtilsView extends StatelessWidget {
  final Widget Function(BuildContext, ScreenUtils) builder;
  const ScreenUtilsView({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtils screenUtils = ScreenUtils.init(context);
    return builder(context, screenUtils);
  }
}
