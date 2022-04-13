import 'package:intl/intl.dart';

String ddMMMM(DateTime dateTime) {
  final currentDate = DateTime.now();

  if (dateTime.year == currentDate.year &&
      dateTime.month == currentDate.month &&
      dateTime.day == currentDate.day) return 'Today';

  if (dateTime.year == currentDate.year &&
      dateTime.month == currentDate.month &&
      dateTime.day == currentDate.day - 1) return 'Yesterday';

  final formatter = DateFormat('EEEE d MMM', 'en');
  return formatter.format(dateTime);
}

String yMMMM(DateTime dateTime) {
  final currentDate = DateTime.now();
  late final formatter;

  if (currentDate.year == dateTime.year) {
    formatter = DateFormat('MMMM', 'en');
    return formatter.format(dateTime);
  }

  formatter = DateFormat('yMMMM', 'en');
  return formatter.format(dateTime);
}
