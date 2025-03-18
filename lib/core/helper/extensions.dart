import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routName, predicate, arguments: arguments);
  }

  void pop() => Navigator.pop(this);
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}
