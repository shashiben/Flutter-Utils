import 'package:flutter/material.dart';

/// Extension to provide convenient methods for adding padding to widgets.
extension PaddingExtension on Widget {
  /// Adds uniform padding to the widget.
  ///
  /// [padding] specifies the amount of padding to apply on all sides.
  /// [key] is an optional identifier for the padding widget.
  Widget padding(double padding, {Key? key}) {
    return Padding(
      padding: EdgeInsets.all(padding),
      key: key,
      child: this,
    );
  }

  /// Adds symmetric padding to the widget.
  ///
  /// [horizontal] specifies the padding on the left and right.
  /// [vertical] specifies the padding on the top and bottom.
  /// [key] is an optional identifier for the padding widget.
  Widget symmetricPadding({
    double horizontal = 0.0,
    double vertical = 0.0,
    Key? key,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      key: key,
      child: this,
    );
  }

  /// Adds custom padding to the widget for each side.
  ///
  /// [left], [top], [right], and [bottom] specify the padding for their respective sides.
  /// [key] is an optional identifier for the padding widget.
  Widget customPadding({
    Key? key,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
      ),
      key: key,
      child: this,
    );
  }
}
