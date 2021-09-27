import 'dart:math';

class FileUtils {
  static String getFileSize(double size, [int round = 2]) {
    /** 
   * The optional parameter [round] specifies the number 
   * of digits after comma/point (default is 2)
   */
    double divider = 1000;
    int _size;
    try {
      _size = int.parse(size.toString());
    } catch (e) {
      throw ArgumentError('Can\'t determine the size, Error is: $e');
    }

    if (_size < divider) {
      return '$_size B';
    }

    if (_size < pow(divider, 2) && _size % divider == 0) {
      return '${(_size / divider).toStringAsFixed(0)} KB';
    }

    if (_size < divider * divider) {
      return '${(_size / divider).toStringAsFixed(round)} KB';
    }

    if (_size < pow(divider, 3) && _size % divider == 0) {
      return '${(_size / (pow(divider, 2))).toStringAsFixed(0)} MB';
    }

    if (_size < pow(divider, 3)) {
      return '${(_size / pow(divider, 2)).toStringAsFixed(round)} MB';
    }

    if (_size < pow(divider, 4) && _size % divider == 0) {
      return '${(_size / (pow(divider, 3))).toStringAsFixed(0)} GB';
    }

    if (_size < pow(divider, 4)) {
      return '${(_size / pow(divider, 3)).toStringAsFixed(round)} GB';
    }

    if (_size < pow(divider, 5) && _size % divider == 0) {
      num r = _size / pow(divider, 4);
      return '${r.toStringAsFixed(0)} TB';
    }

    if (_size < pow(divider, 5)) {
      num r = _size / pow(divider, 4);
      return '${r.toStringAsFixed(round)} TB';
    }

    if (_size < pow(divider, 6) && _size % divider == 0) {
      num r = _size / pow(divider, 5);
      return '${r.toStringAsFixed(0)} PB';
    } else {
      num r = _size / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(round)} PB';
    }
  }
}
