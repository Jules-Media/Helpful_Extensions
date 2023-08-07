library helpful_extensions;

extension MonthExtension on DateTime {
  Month get monthAsEnum {
    return Month.values[month - 1];
  }
}

enum Month {
  january('January', 'Jan'),
  february('February', 'Feb'),
  march('March', 'Mar'),
  april('April', 'Apr'),
  may('May', 'May'),
  june('June', 'Jun'),
  july('July', 'Jul'),
  august('August', 'Aug'),
  september('September', 'Sep'),
  october('October', 'Oct'),
  november('November', 'Nov'),
  december('December', 'Dec');

  const Month(this.completeName, this.abbreviation);

  final String completeName;

  final String abbreviation;
}
