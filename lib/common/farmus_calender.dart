import 'package:farmus/view_model/home/notifier/my_veggie_add_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '../view_model/routine/routine_provider.dart';
import 'theme/farmus_theme_color.dart';
import 'theme/farmus_theme_text_style.dart';

class FarmusCalender extends ConsumerStatefulWidget {
  FarmusCalender({
    super.key,
    DateTime? lastDay,
    this.selectedDay,
    this.routineMonth,
  }) : lastDay = lastDay ?? DateTime.now();

  final DateTime? lastDay;
  final DateTime? selectedDay;
  final List<String>? routineMonth;

  @override
  ConsumerState createState() => _FarmusCalenderState();
}

class _FarmusCalenderState extends ConsumerState<FarmusCalender> {
  DateTime? _selectedDay;
  late DateTime _focusedDay;
  late Set<String> _routineDates;

  @override
  void initState() {
    super.initState();
    _selectedDay = widget.selectedDay;
    _focusedDay = widget.selectedDay ?? DateTime.now();
    _updateRoutineDates();
  }

  @override
  void didUpdateWidget(FarmusCalender oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.routineMonth != oldWidget.routineMonth) {
      _updateRoutineDates();
    }
  }

  void _updateRoutineDates() {
    setState(() {
      _routineDates = widget.routineMonth?.toSet() ?? {};
    });
  }

  @override
  Widget build(BuildContext context) {
    final myVeggieAddNotifier = ref.read(myVeggieAddNotifierProvider.notifier);
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
        myVeggieAddNotifier.updateDateFormatted(selectedDate);
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
        eventLoader: (day) {
          if (_routineDates.contains(day.toIso8601String().split('T').first)) {
            return ['Routine'];
          }
          return [];
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
              myVeggieAddNotifier.updateDateFormatted(selectedDay);
              ref.read(selectedDateProvider.notifier).state = selectedDay.toIso8601String().split('T').first;
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
        calendarBuilders: CalendarBuilders(
          markerBuilder: (context, date, events) {
            if (events.isNotEmpty) {
              return Container(
                width: 8.0,
                height: 8.0,
                decoration: const BoxDecoration(
                  color: FarmusThemeColor.gray1,
                  shape: BoxShape.circle,
                ),
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
