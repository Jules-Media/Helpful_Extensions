library helpful_extensions;

/// Extension to get the Weekday
/// as a String of the Datetime
extension WeekdayExtension on DateTime {
  Weekday get weekdayAsEnum {
    switch (weekday) {
      case 1:
        return Weekday.monday;
      case 2:
        return Weekday.tuesday;
      case 3:
        return Weekday.wednesday;
      case 4:
        return Weekday.thursday;
      case 5:
        return Weekday.friday;
      case 6:
        return Weekday.saturday;
      case 7:
        return Weekday.sunday;
      default:
        throw _UnknownWeekday();
    }
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

final class _UnknownWeekday extends Error {}
