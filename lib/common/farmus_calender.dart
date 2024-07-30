import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import 'theme/farmus_theme_color.dart';
import 'theme/farmus_theme_text_style.dart';

class FarmusCalender extends ConsumerStatefulWidget {
  FarmusCalender({super.key, DateTime? lastDay, this.selectedDay})
      : lastDay = lastDay ?? DateTime.now();

  final DateTime? lastDay;
  final DateTime? selectedDay;

  @override
  ConsumerState createState() => _FarmusCalenderState();
}

class _FarmusCalenderState extends ConsumerState<FarmusCalender> {
  DateTime? _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = widget.selectedDay;
    _focusedDay = widget.selectedDay ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(myVeggieAddNotifierProvider.notifier);

    final myVeggieAddState = ref.read(myVeggieAddNotifierProvider).value;

    if (myVeggieAddState?.date != null && myVeggieAddState!.date.isNotEmpty) {
      _selectedDay = DateTime.parse(myVeggieAddState.date);
      _focusedDay = _selectedDay!;
    }

    Future<void> selectDate(BuildContext context) async {
      DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDay ?? DateTime.now(),
        firstDate: DateTime.utc(2020, 10, 16),
        lastDate: widget.lastDay ?? DateTime.now(),
        locale: const Locale('ko', 'KR'),
        initialDatePickerMode: DatePickerMode.year,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
      );

      if (selectedDate != null) {
        setState(() {
          _selectedDay = selectedDate;
          _focusedDay = selectedDate;
        });
        notifier.updateDateFormatted(selectedDate);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2020, 10, 16),
        lastDay: widget.lastDay ?? DateTime.now(),
        locale: 'ko_KR',
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
              notifier.updateDateFormatted(selectedDay);
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        onHeaderTapped: (dateTime) => selectDate(context),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronVisible: false,
          titleCentered: true,
          titleTextStyle: FarmusThemeTextStyle.gray1Medium13,
          headerMargin: EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            color: FarmusThemeColor.background,
          ),
        ),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: FarmusThemeTextStyle.darkReqular14,
          defaultTextStyle: FarmusThemeTextStyle.darkReqular14,
          selectedDecoration: BoxDecoration(
            color: FarmusThemeColor.primary,
            shape: BoxShape.circle,
          ),
          isTodayHighlighted: false,
        ),
      ),
    );
  }
}
