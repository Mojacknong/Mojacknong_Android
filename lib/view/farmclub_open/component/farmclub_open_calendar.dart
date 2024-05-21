import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/farmclub_open/farmclub_open_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class FarmclubOpenCalendar extends ConsumerStatefulWidget {
  const FarmclubOpenCalendar({super.key});

  @override
  ConsumerState createState() => _FarmclubOpenCalendarState();
}

class _FarmclubOpenCalendarState extends ConsumerState<FarmclubOpenCalendar> {
  DateTime? _selectedDay;

  DateTime _focusedDay = DateTime.now();
  final DateTime _lastDay = DateTime.now().add(const Duration(days: 30));

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(farmclubOpenInfoAddProvider.notifier);

    if (ref.read(farmclubOpenInfoAddProvider).date != '') {
      _selectedDay = DateTime.parse(ref.read(farmclubOpenInfoAddProvider).date);
      _focusedDay = _selectedDay!;
    }

    Future<void> selectDate(BuildContext context) async {
      DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: _selectedDay,
          firstDate: DateTime.utc(2020, 10, 16),
          lastDate: _lastDay,
          locale: const Locale('ko', 'KR'),
          initialDatePickerMode: DatePickerMode.year,
          initialEntryMode: DatePickerEntryMode.calendarOnly);

      if (selectedDate != null) {
        setState(() {
          _selectedDay = selectedDate;
          _focusedDay = selectedDate;
        });
        notifier.updateDate(selectedDate.toString());
      }
    }

    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(2020, 10, 16),
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
            notifier.updateDate(selectedDay.toString());
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
          )),
      calendarStyle: const CalendarStyle(
        weekendTextStyle: FarmusThemeTextStyle.darkReqular14,
        defaultTextStyle: FarmusThemeTextStyle.darkReqular14,
        selectedDecoration: BoxDecoration(
          color: FarmusThemeColor.primary,
          shape: BoxShape.circle,
        ),
        isTodayHighlighted: false,
      ),
    );
  }
}
