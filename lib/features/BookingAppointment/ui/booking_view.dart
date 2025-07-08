import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_cubit.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_bloc_listener.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/available_time.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class BookingView extends StatelessWidget {
  final String? doctorId;

  const BookingView({super.key, this.doctorId});

  @override
  Widget build(BuildContext context) {
    // Debug logging
    print('DEBUG: BookingView received doctorId = $doctorId');

    return BlocProvider(
      create: (context) {
        final cubit = getIt<AppointmentCubit>();
        if (doctorId != null) {
          print('DEBUG: Setting doctorId in cubit: $doctorId');
          cubit.setSelectedDoctorId(doctorId!);
        } else {
          print('DEBUG: No doctorId provided to BookingView');
        }
        return cubit;
      },
      child: Scaffold(
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: null,
          onTap: (index) => navigateToTab(context, index),
        ),
        body: const BookingViewBody(),
      ),
    );
  }
}

class BookingViewBody extends StatefulWidget {
  const BookingViewBody({super.key});

  @override
  State<BookingViewBody> createState() => _BookingViewBodyState();
}

class _BookingViewBodyState extends State<BookingViewBody> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String? _selectedTimeSlot;

  bool _isBooked(DateTime day) {
    // You can implement logic to check booked days from API
    return false;
  }

  bool _isSelectable(DateTime day) {
    return !_isBooked(day) &&
        day.isAfter(DateTime.now().subtract(const Duration(days: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            verticalSpace(height: 40.h),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 16.h,
                bottom: 16.h,
                right: 16.h,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: ColorManager.black,
                      size: 20.sp,
                    ),
                  ),
                  horizontalSpace(width: 8.w),
                  Text('Book Appointment', style: Styles.font18Black600Weight),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Calendar
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: TableCalendar(
                        firstDay: DateTime.now(),
                        lastDay: DateTime.now().add(const Duration(days: 180)),
                        focusedDay: _focusedDay,
                        selectedDayPredicate:
                            (day) => isSameDay(_selectedDay, day),
                        calendarFormat: CalendarFormat.month,
                        onDaySelected: (selectedDay, focusedDay) {
                          if (_isSelectable(selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                            });

                            // Update cubit with selected date
                            context.read<AppointmentCubit>().setSelectedDate(
                              selectedDay,
                            );
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
                            return DateFormat('MMMM yyyy').format(date);
                          },
                          headerMargin: EdgeInsets.only(bottom: 10.h),
                        ),
                        calendarStyle: CalendarStyle(
                          defaultTextStyle: Styles.font16Black500Weight,
                          cellMargin: const EdgeInsets.only(
                            bottom: 10,
                            top: 16,
                          ),
                          cellAlignment: Alignment.center,
                          isTodayHighlighted: false,
                          selectedDecoration: const BoxDecoration(
                            color: ColorManager.primaryBlue,
                            shape: BoxShape.circle,
                          ),
                          defaultDecoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          disabledTextStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        locale: 'en_US',
                        startingDayOfWeek: StartingDayOfWeek.saturday,
                        calendarBuilders: CalendarBuilders(
                          defaultBuilder: (context, day, focusedDay) {
                            String dayText = NumberFormat("00").format(day.day);
                            return Center(
                              child: Text(
                                dayText,
                                style: Styles.font16Black500Weight,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    verticalSpace(height: 20.h),

                    // Available Time
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'Available time',
                          style: Styles.font16Black500Weight,
                        ),
                      ),
                    ),

                    TimeSlotsGrid(
                      onSlotSelected: (timeSlot) {
                        setState(() {
                          _selectedTimeSlot = timeSlot;
                        });
                        // Update cubit with selected time slot
                        context.read<AppointmentCubit>().setSelectedTimeSlot(
                          timeSlot,
                        );
                      },
                    ),

                    verticalSpace(height: 20.h),

                    // Book Button
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomTextButton(
                        backgroundColor: ColorManager.primaryBlue,
                        textName: 'Book Appointment',
                        height: 50.h,
                        width: double.infinity,
                        textStyle: Styles.font16White500Weight,
                        onPressed:
                            _selectedDay != null && _selectedTimeSlot != null
                                ? () {
                                  context
                                      .read<AppointmentCubit>()
                                      .bookAppointment();
                                }
                                : null,
                      ),
                    ),

                    verticalSpace(height: 15.h),
                  ],
                ),
              ),
            ),
          ],
        ),

        // BLoC Listener
        const AppointmentBlocListener(),
      ],
    );
  }
}
