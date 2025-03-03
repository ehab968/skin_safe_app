class AppValidators {
  static String? validateEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    return null;
  }

  static String? validatePin(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    if (value.length < 4) {
      return 'Pin must be at least 4 characters long';
    }
    return null;
  }

  static String? validateEmailOrPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final phoneRegex = RegExp(r'^(01[0-2]|015)[0-9]{8}$');

    if (!emailRegex.hasMatch(value) && !phoneRegex.hasMatch(value)) {
      return 'Please enter a valid email or phone number';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    final phoneRegex = RegExp(r'^(01[0-2]|015)[0-9]{8}$');

    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character (!@#\$%^&*)';
    }
    return null;
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is required';
    }

    final dateRegex =
        RegExp(r'^(0?[1-9]|[12][0-9]|3[01])\/(0?[1-9]|1[0-2])\/\d{4}$');

    if (!dateRegex.hasMatch(value)) {
      return 'Please enter a valid date';
    }
    return null;
  }
}
