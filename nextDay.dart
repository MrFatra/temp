void main(List<String> args) {
  print(nextDay(DateTime.parse('2020-01-28'), 6));
}

nextDay(DateTime currentDay, int dayTo) {
  int day = currentDay.day;
  int month = currentDay.month;
  int year = currentDay.year;

  int limitDay = (month % 2 != 0) ? 31 : 30;

  int i = 1;
  while (i <= dayTo) {
    if (month == DateTime.february) limitDay = 28;
    if (day == limitDay + 1) {
      month++;
      day = 1;
    }
    if (month == 13) {
      year++;
      month = 1;
    }
    day++;
    i++;
  }

  return '$year - ${(month < 10) ? '0$month' : month} - ${(day < 10) ? '0$day' : day}';

  // currentDay = currentDay.add(Duration(days: dayTo));

  // return '${currentDay.year} - ${(currentDay.month < 10) ? '0${currentDay.month}' : currentDay.month} - ${(currentDay.day < 10) ? '0${currentDay.day}' : currentDay.day}';
}
