bool isValidPassword({required String password, int minLength = 8}) {
  if (password.isEmpty) {
    return false;
  }

  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasMinLength = password.length >= minLength;

  return hasDigits && hasUppercase && hasLowercase && hasMinLength;
}

String convertCapitalCase(String text) {
  String newText =
      text.length > 0 ? '${text[0].toUpperCase()}${text.substring(1)}' : '';
  // ex : Hello world
  return newText;
}

String convertTitleCase(String text) {
  String newText = text
      .replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => convertCapitalCase(str))
      .join(' ');
  // ex : Hello World
  return newText;
}
