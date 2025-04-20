import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_confirmation.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/available_time.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class BookingCalendarWidget extends StatefulWidget {
  final List<DateTime> bookedDays;
  final void Function(DateTime selectedDay)? onDaySelected;

  const BookingCalendarWidget({
    super.key,
    required this.bookedDays,
    this.onDaySelected,
  });

  @override
  State<BookingCalendarWidget> createState() => _BookingCalendarWidgetState();
}

class _BookingCalendarWidgetState extends State<BookingCalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  bool _isBooked(DateTime day) {
    return widget.bookedDays.any(
      (d) => d.year == day.year && d.month == day.month && d.day == day.day,
    );
  }

  bool _isSelectable(DateTime day) {
    return !_isBooked(day) &&
        day.isAfter(DateTime.now().subtract(const Duration(days: 2)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
      body: Column(
        children: [
          verticalSpace(height: 40.h),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.h,
              bottom: 16.h,
              right: 16.h,
            ),
            child: TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime.now().add(const Duration(days: 180)),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              calendarFormat: CalendarFormat.month,
              onDaySelected: (selectedDay, focusedDay) {
                if (_isSelectable(selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });

                  if (widget.onDaySelected != null) {
                    widget.onDaySelected!(selectedDay);
                  }
                }
              },
              enabledDayPredicate: _isSelectable,
              headerStyle: HeaderStyle(
                headerPadding: const EdgeInsets.all(8),
                formatButtonVisible: false,
                titleCentered: false,
                leftChevronVisible: false,
                rightChevronVisible: false,
                titleTextStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                titleTextFormatter: (date, locale) {
                  return DateFormat('MMMM').format(date);
                },
                headerMargin: EdgeInsets.only(bottom: 10.h),
              ),
              calendarStyle: CalendarStyle(
                defaultTextStyle: Styles.font16Black500Weight,
                cellMargin: const EdgeInsets.only(bottom: 10, top: 16),
                cellAlignment: Alignment.center,
                isTodayHighlighted: false,
                selectedDecoration: const BoxDecoration(
                  color: ColorManager.MainGray,
                  shape: BoxShape.circle,
                ),
                defaultDecoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                disabledTextStyle: const TextStyle(color: Colors.grey),
              ),
              locale: 'en_US',
              startingDayOfWeek: StartingDayOfWeek.saturday,
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, day, focusedDay) {
                  String dayText = NumberFormat("00").format(day.day);
                  return Center(
                    child: Text(dayText, style: Styles.font16Black500Weight),
                  );
                },
              ),
            ),
          ),
          verticalSpace(height: 1.h),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Available time', style: Styles.font16Black500Weight),
            ),
          ),
          const Flexible(child: TimeSlotsGrid()),
          verticalSpace(height: 3.h),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextButton(
              backgroundColor: ColorManager.primaryBlue,
              textName: 'Book an Appointment',
              height: 50.h,
              width: double.infinity,
              textStyle: Styles.font16White500Weight,
              onPressed: () {
                showAppointmentConfirmationDialog(context);
              },
            ),
          ),
          verticalSpace(height: 15.h),
        ],
      ),
    );
  }

  void showAppointmentConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const AppointmentConfirmationDialog();
      },
    );
  }
}
