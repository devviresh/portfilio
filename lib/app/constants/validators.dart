import 'dart:js';

String? isValidName(value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your Name.';
  }
  if (value.length < 3) {
    return 'Name must be at least 3 characters long!';
  }
  return null;
}

String? isValidEmail(value) {
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  if (value == null || value.isEmpty) {
    return 'Please enter your Email.';
  }
  if (!emailRegex.hasMatch(value)) {
    return 'Invalid Email address!';
  }
  return null;
}

String? isValidText(value) {
  if (value == null || value.length < 3) {
    return 'Please type something!';
  }
  return null;
}
