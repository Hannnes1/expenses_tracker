import 'package:expensetrack/core/extensions.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    super.key,
    this.validator,
    required this.onDateSelected,
    required this.selectedDate,
    required this.labelText,
  });

  final String? Function(String?)? validator;
  final void Function(DateTime) onDateSelected;
  final DateTime? selectedDate;
  final String labelText;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.selectedDate?.localDate());
  }

  @override
  void didUpdateWidget(DatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.selectedDate != oldWidget.selectedDate) {
      Future(() => _controller.text = widget.selectedDate?.localDate() ?? '');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(4000),
    );

    if (date != null) {
      widget.onDateSelected(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // I would have liked to place the GestureDetector as a parent
        // of the TextFormField, but it didn't work. Even with
        // [IgnorePointer] between the two.
        TextFormField(
          validator: widget.validator,
          controller: _controller,
          decoration: InputDecoration(
            labelText: widget.labelText,
          ),
        ),
        Positioned.fill(
          child: GestureDetector(
            onTap: () => _selectDate(context),
          ),
        ),
      ],
    );
  }
}
