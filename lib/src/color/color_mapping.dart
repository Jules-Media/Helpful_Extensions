library helpful_extensions;

import 'package:flutter/material.dart' show Color;

/// Extension on Color to determine if they
/// are dark or light
extension ColorMapping on Color {
  /// Returns if the Color is dark
  bool isDark() {
    return (red * 0.299) + (green * 0.587) + (blue * 0.114) < 186;
  }

  /// Returns if the Color is light
  bool isLight() {
    return (red * 0.299) + (green * 0.587) + (blue * 0.114) > 186;
  }
}
