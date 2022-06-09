part of calendar;

class _CalendarModel extends TTChangeNotifier<_CalendarView> {
  final calendars = <SubscripItemInfo>[];
  final dates = <DateTime>[];
  final months = <DateTime>[];

  DateTime monthSelected = DateTime.now();
  late DateTime now;

  _CalendarModel() {
    _initData();
  }
  void _initData() {
    final lsCalendar = List.generate(10, (index) {
      return SubscripItemInfo.from({
        'icons': Id.ic_logo,
        'names': 'name$index',
        'money': 5.99,
      });
    });
    calendars.addAll(lsCalendar);
    now = DateTime.now();

    _genDateList(now);
    final lsMonth = List.generate(12, (index) {
      return DateTime(now.year, index + 1, 1);
    });
    months.addAll(lsMonth);
    monthSelected = DateTime(now.year, now.month, 1);
    notifyListeners();
  }

  int getDaysInMonth(DateTime d) => DateTime(d.year, d.month + 1, 0).day;

  void onMonthChanged(DateTime? value) {
    if (value == null) {
      return;
    }
    if (value == monthSelected) {
      return;
    }
    monthSelected = value;
    _genDateList(monthSelected);
    notifyListeners();
  }

  void _genDateList(DateTime date) {
    final days = getDaysInMonth(date);
    final lsDate = List.generate(days, (index) {
      return DateTime(date.year, date.month, index + 1);
    });
    dates.clear();
    dates.addAll(lsDate);
    notifyListeners();
  }

  bool isToday(DateTime d) {
    return d.year == monthSelected.year && d.month == monthSelected.month && d.day == monthSelected.day;
  }
}
