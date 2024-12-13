import 'dart:convert';

/// Extension on [String] to provide additional functionality.
extension StringExtension on String {
  /// Returns the string with the first letter capitalized.
  ///
  /// ```dart
  /// print('flutter'.capitalize()) // Flutter
  /// print('Flutter'.capitalize()) // Flutter
  /// ```
  String capitalize() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toUpperCase();
      default:
        return substring(0, 1).toUpperCase() + substring(1);
    }
  }

  /// Returns `true` if the string can be converted to an integer, `false` otherwise.
  bool isInt() {
    return int.tryParse(this) != null;
  }

  /// Returns `true` if the string can be converted to a double, `false` otherwise.
  bool isDouble() {
    return double.tryParse(this) != null;
  }

  /// Tries to parse the string as an integer and returns the result.
  ///
  /// Returns `null` if the string cannot be parsed as an integer.
  int? toInt({int? radix}) {
    return int.tryParse(this, radix: radix);
  }

  /// Tries to parse the string as a double and returns the result.
  ///
  /// Returns `null` if the string cannot be parsed as a double.
  double? toDouble() {
    return double.tryParse(this);
  }

  /// Returns `true` if the string can be parsed as a JSON object, `false` otherwise.
  bool isJson() {
    try {
      jsonDecode(this);
      return true;
    } on FormatException catch (_) {
      return false;
    }
  }

  /// Returns `true` if the string is blank or empty, `false` otherwise.
  bool isBlank() {
    return trim().isEmpty;
  }
   bool get isStrongPassword {
    final password = this;
    final hasUpperCase = RegExp(r'[A-Z]').hasMatch(password);
    final hasLowerCase = RegExp(r'[a-z]').hasMatch(password);
    final hasDigits = RegExp(r'\d').hasMatch(password);
    final hasSpecialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
    final isValidLength = password.length >= 8;

    return hasUpperCase && hasLowerCase && hasDigits && hasSpecialCharacters && isValidLength;
  }

  // Optionally, provide a helper to give feedback
  String get passwordStrengthFeedback {
    if (length < 8) {
      return "Password too short, must be at least 8 characters.";
    } else if (!RegExp(r'[A-Z]').hasMatch(this)) {
      return "Password must contain at least one uppercase letter.";
    } else if (!RegExp(r'[a-z]').hasMatch(this)) {
      return "Password must contain at least one lowercase letter.";
    } else if (!RegExp(r'\d').hasMatch(this)) {
      return "Password must contain at least one number.";
    } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(this)) {
      return "Password must contain at least one special character.";
    } else {
      return "Password is strong!";
    }
  }
}
