class Validator {
  static bool validateEmpty(String value) {
    if (value.isEmpty) {
      return true;
    }

    return false;
  }

  static bool validateName(String value) {
    RegExp regExp = RegExp(r'[a-zA-Z]');
    return value.length >= 4 && regExp.hasMatch(value) && !validateEmail(value);
  }

  static bool validatePassword(String value) {
    if (value.length >= 6) {
      return true;
    }
    return false;
  }

  static bool validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    }

    return true;
  }

  static bool validateMobile(String value) {
    String pattern = r'^(\+\d{1,3}[- ]?)?\d{10}$';
    RegExp regExp = RegExp(pattern);

    return value.isNotEmpty && regExp.hasMatch(value);
  }
}
