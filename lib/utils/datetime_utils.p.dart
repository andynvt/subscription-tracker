import 'package:intl/intl.dart';

class DateTimeUtils {
  DateTimeUtils._();
  static const _weekdayFormat = 'EE';
  static const _monthFormat = 'MMMM';

  static String _format(DateTime d, {String? format}) {
    try {
      return DateFormat(format).format(d);
    } catch (e) {
      return '-';
    }
  }

  static String monthFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _monthFormat);
  }

  static String weekdayFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _weekdayFormat);
  }
}
