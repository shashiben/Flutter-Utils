import 'dart:math';

/// A Utility class for file-related operations.
class FileUtils {
  /// Converts a file size in bytes to a human-readable format.
  ///
  /// The [size] parameter specifies the file size in bytes.
  /// The optional [round] parameter specifies the number of decimal places
  /// to include in the output (default is 2).
  ///
  /// Examples:
  /// ```dart
  /// FileUtils.getFileSize(1024); // Returns '1.00 KB'
  /// FileUtils.getFileSize(1048576, 0); // Returns '1 MB'
  /// ```
  static String getFileSize(double size, [int round = 2]) {
    const double divider = 1000;
    int size0;
    try {
      size0 = int.parse(size.toString());
    } catch (e) {
      throw ArgumentError("Can't determine the size. Error: $e");
    }

    if (size0 < divider) {
      return '$size0 B';
    } else if (size0 < pow(divider, 2)) {
      return '${(size0 / divider).toStringAsFixed(round)} KB';
    } else if (size0 < pow(divider, 3)) {
      return '${(size0 / pow(divider, 2)).toStringAsFixed(round)} MB';
    } else if (size0 < pow(divider, 4)) {
      return '${(size0 / pow(divider, 3)).toStringAsFixed(round)} GB';
    } else if (size0 < pow(divider, 5)) {
      return '${(size0 / pow(divider, 4)).toStringAsFixed(round)} TB';
    } else if (size0 < pow(divider, 6)) {
      return '${(size0 / pow(divider, 5)).toStringAsFixed(round)} PB';
    } else {
      return '${(size0 / pow(divider, 6)).toStringAsFixed(round)} EB';
    }
  }
}
