import 'package:intl/intl.dart';

class NumberUtils {
  NumberUtils._();

  static final _currency = NumberFormat.currency(symbol: '\$');

  static String formatCurrency(double? value) {
    try {
      return _currency.format(value);
    } catch (e) {
      return '\$0';
    }
  }
}
