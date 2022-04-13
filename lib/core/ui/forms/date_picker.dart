import 'package:flutter/material.dart';
import 'package:budget_nerd/core/formatter/date_formatter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:budget_nerd/core/ui/index.dart';

class DatePicker extends StatefulWidget {
  final Function(DateTime) onDateSelect;
  final DateTime initialDate;

  DatePicker({
    Key? key,
    required this.onDateSelect,
    required this.initialDate,
  }) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime _selectedDate;

  Future _selectDate(BuildContext context) async {
    final theme = ThemeProvider.themeOf(context).data;

    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.dark(
              primary: theme.colorScheme.accent,
              onPrimary: theme.colorScheme.onBackground,
              surface: theme.colorScheme.background,
              onSurface: theme.colorScheme.onBackground,
            ),
            dialogBackgroundColor: theme.colorScheme.background,
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      widget.onDateSelect(_selectedDate);
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => _selectDate(context),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              ddMMMM(widget.initialDate),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
