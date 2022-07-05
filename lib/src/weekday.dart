library helpful_extensions;

/// Extension to get the Weekday
/// as a String of the Datetime
extension Weekday on DateTime {
  /// Returns the Weekday as a String.
  /// For instance: Monday
  String get weekdayAsString {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'Day of the Week not found.';
    }
  }
}
