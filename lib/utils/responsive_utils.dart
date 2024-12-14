import 'package:universal_io/io.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../constants/enums.dart';

DeviceType getDeviceType() {
  if (kIsWeb) {
    return DeviceType.web;
  } else if (Platform.isAndroid) {
    return DeviceType.android;
  } else if (Platform.isIOS) {
    return DeviceType.ios;
  } else if (Platform.isFuchsia) {
    return DeviceType.fuchsia;
  } else if (Platform.isWindows) {
    return DeviceType.windows;
  } else if (Platform.isMacOS) {
    return DeviceType.mac;
  } else if (Platform.isLinux) {
    if (_isChromeOS()) {
      return DeviceType.chromeos;
    }
    return DeviceType.linux;
  } else {
    return DeviceType.unknown;
  }
}

bool _isChromeOS() {
  const String chromeOSModel = 'chromebook';
  return Platform.environment.containsKey('CROS_USER_ID_HASH') ||
      (Platform.environment['MODEL']?.toLowerCase().contains(chromeOSModel) ??
          false);
}
