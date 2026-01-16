import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
}
