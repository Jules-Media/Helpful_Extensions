library helpful_extensions;

/// Extension to check stuff on Lists.
extension ListCheck on List {
  /// Checks if the List has
  /// enough Elements for the Index [i]
  /// to exists.
  bool hasIndex(int i) {
    return i < length;
  }
}
