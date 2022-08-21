library helpful_extensions;

import 'package:flutter/material.dart' show Color, HSLColor;

/// Extension on Color to determine if they
/// are dark or light
extension ColorMapping on Color {
  /// Returns if the Color is dark
  bool get isDark {
    return (red * 0.299) + (green * 0.587) + (blue * 0.114) < 186;
  }

  /// Returns if the Color is light
  bool get isLight {
    return (red * 0.299) + (green * 0.587) + (blue * 0.114) > 186;
  }

  /// Returns a matching Gradient Color
  /// for this Color.
  Color get gradientColor {
    final HSLColor c = HSLColor.fromColor(this);
    final HSLColor changed;
    if (c.hue < 180) {
      changed = c.withHue(c.hue + 100);
    } else {
      changed = c.withHue(c.hue - 100);
    }
    return changed.toColor();
  }
}
