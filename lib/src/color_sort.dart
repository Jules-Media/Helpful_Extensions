library helpful_extensions;

import 'package:flutter/material.dart';

/// THe Options to determine what
/// color should be sorted by.
enum ColorSortingOptions {
  red,
  green,
  blue,
}

/// Returnst the right ColorSortingOptions
/// depending on that one Color you passed as
/// an Arguemnt
ColorSortingOptions optionsForColor(Color c) {
  final List<int> l = [c.red, c.green, c.blue];
  l.sort();
  if (c.red == l[2]) {
    return ColorSortingOptions.red;
  } else if (c.green == l[2]) {
    return ColorSortingOptions.green;
  } else {
    return ColorSortingOptions.blue;
  }
}

/// This Extension is only
/// available on a List of Colors.
///
/// It holds Methods to sort
/// this List
extension ColorSort on List<Color> {
  /// Returns a List that is sorted
  /// by Color to
  /// create a beatiful Gradient
  void colorSort(ColorSortingOptions options) {
    // Check what to search for + sort
    if (options == ColorSortingOptions.red) {
      sort((a, b) => a.red.compareTo(b.red));
    } else if (options == ColorSortingOptions.green) {
      sort((a, b) => a.green.compareTo(b.green));
    } else if (options == ColorSortingOptions.blue) {
      sort((a, b) => a.blue.compareTo(b.blue));
    } else {
      return;
    }
  }
}
