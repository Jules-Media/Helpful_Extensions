library helpful_extensions;

/// Extension to get the Weekday
/// as a String of the Datetime
extension WeekdayExtension on DateTime {
  Weekday get weekdayAsEnum {
    return Weekday.values[weekday - 1];
  }
}

enum Weekday {
  monday('Monday', 'Mo'),
  tuesday('Tuesday', 'Tue'),
  wednesday('Wednesday', 'We'),
  thursday('Thursday', 'Thu'),
  friday('Friday', 'Fr'),
  saturday('Saturday', 'Sat'),
  sunday('Sunday', 'Sun');

  const Weekday(this.completeName, this.abbreviation);

  final String completeName;

  final String abbreviation;
}
