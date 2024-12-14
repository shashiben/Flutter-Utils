import 'package:flutter/widgets.dart';

/// Extension for adding custom utilities to [num] type for widget-related sizing.
extension WidgetExtensions on num {
  /// Creates a vertical `SizedBox` with the height set to the value of this number.
  ///
  /// This is useful for adding vertical space in widgets.
  ///
  /// Example:
  /// ```dart
  /// 10.verticalBox // Creates a SizedBox with height 10.
  /// ```
  Widget get verticalBox => SizedBox(height: toDouble());

  /// Creates a horizontal `SizedBox` with the width set to the value of this number.
  ///
  /// This is useful for adding horizontal space in widgets.
  ///
  /// Example:
  /// ```dart
  /// 20.horizontalBox // Creates a SizedBox with width 20.
  /// ```
  Widget get horizontalBox => SizedBox(width: toDouble());
}

/// Extension for adding asynchronous utilities to [num] type for delayed operations.
extension AsyncExtensions on num {
  /// Delays the operation for a given duration.
  ///
  /// This can be used for simulating a delay in async operations that involve numbers.
  ///
  /// Example:
  /// ```dart
  /// await 5.delayed(Duration(seconds: 2)); // Waits for 2 seconds.
  /// ```
  Future delayed(Duration duration) async {
    await Future.delayed(duration);
  }
}
