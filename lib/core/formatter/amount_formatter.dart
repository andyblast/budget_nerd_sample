import 'package:intl/intl.dart';

String? formatAmount(num? value) {
  if (value != null) {
    if (value.abs() >= 1000000) {
      return _formatValue(value);
    } else {
      if (_isInt(value)) {
        return value.round().toString();
      } else {
        return value.toStringAsFixed(2);
      }
    }
  } else {
    return value?.toStringAsFixed(2);
  }
}

String _formatValue(num value) {
  if (value.abs() >= 1000000 && value.abs() < 1000000 * 100) {
    final temp = value / 1000;
    return temp.round().toString() + 'k';
  } else if (value.abs() >= 1000000 * 100 &&
      value.abs() < 1000000000 * 100 * 100) {
    final temp = value / 1000000;
    return temp.round().toString() + 'M';
  } else {
    return NumberFormat.compact().format(value);
  }
}

bool _isInt(num value) {
  return (value is int || value == value.roundToDouble());
}
