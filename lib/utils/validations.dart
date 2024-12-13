class NextValidations {
  /// Validates if the given string is a valid UUID.
  static bool isValidUUID(String uuid) {
    final regex = RegExp(
        r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\$');
    return regex.hasMatch(uuid);
  }

  /// Validates if the given string is a valid MAC address.
  static bool isValidMacAddress(String mac) {
    final regex = RegExp(r'^[0-9A-Fa-f]{2}(:[0-9A-Fa-f]{2}){5}\$');
    return regex.hasMatch(mac);
  }

  /// Validates if the given string is a valid IPv4 address.
  static bool isValidIPv4(String ip) {
    final regex = RegExp(r'^((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)(\.|\b)){4}\$');
    return regex.hasMatch(ip);
  }

  /// Validates if the given string is a valid IPv6 address.
  static bool isValidIPv6(String ip) {
    final regex = RegExp(r'^(?:[a-fA-F0-9]{1,4}:){7}[a-fA-F0-9]{1,4}\$');
    return regex.hasMatch(ip);
  }

  /// Validates if the given string is a valid credit card number.
  static bool isValidCreditCard(String number) {
    final regex = RegExp(r'^[0-9]{13,19}\$');
    return regex.hasMatch(number);
  }

  /// Validates if the given string is a valid email address.
  static bool isValidEmail(String email) {
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+\$');
    return regex.hasMatch(email);
  }

  /// Validates if the given string is a valid phone number.
  /// Supports international formats.
  static bool isValidPhoneNumber(String phone) {
    final regex = RegExp(r'^\+?[1-9]\d{1,14}\$');
    return regex.hasMatch(phone);
  }

  /// Validates if the given string is a valid URL.
  static bool isValidUrl(String url) {
    final regex = RegExp(
        r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\$');
    return regex.hasMatch(url);
  }

  /// Validates if the given string contains only alphanumeric characters.
  static bool isAlphanumeric(String input) {
    final regex = RegExp(r'^[a-zA-Z0-9]+\$');
    return regex.hasMatch(input);
  }
}
