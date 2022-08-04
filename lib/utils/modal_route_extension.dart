import 'package:flutter/cupertino.dart';

/// ModalRoute extension methods
extension ModalRouteExtension on ModalRoute<dynamic>? {
  /// Get arguments of ModalRoute casted by [T]
  T? arguments<T>() => this?.settings.arguments as T;
}
