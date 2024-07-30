import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';

class FarmclubOpenCalendar extends ConsumerStatefulWidget {
  const FarmclubOpenCalendar({super.key});

  @override
  ConsumerState createState() => _FarmclubOpenCalendarState();
}

class _FarmclubOpenCalendarState extends ConsumerState<FarmclubOpenCalendar> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  final DateTime _lastDay = DateTime.now().add(const Duration(days: 18262));

  @override
  Widget build(BuildContext context) {
    final farmclubVeggieAddState = ref.watch(farmclubOpenInfoNotifierProvider);

    if (farmclubVeggieAddState.value?.startDate != null &&
        farmclubVeggieAddState.value!.startDate.isNotEmpty) {
      _selectedDay = DateTime.parse(farmclubVeggieAddState.value!.startDate);
      _focusedDay = _selectedDay!;
    }

    Future<void> selectDate(BuildContext context) async {
      DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDay ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: _lastDay,
        locale: const Locale('ko', 'KR'),
        initialDatePickerMode: DatePickerMode.year,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
      );

      if (selectedDate != null) {
        setState(() {
          _selectedDay = selectedDate;
          _focusedDay = selectedDate;
        });
        ref.read(farmclubOpenInfoNotifierProvider.notifier).updateDateFormatted(selectedDate);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime.now(),
        lastDay: _lastDay,
        locale: 'ko_KR',
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
            ref.read(farmclubOpenInfoNotifierProvider.notifier).updateDateFormatted(selectedDay);
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
