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
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_state.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_bloc_listener.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/available_time.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class BookingView extends StatelessWidget {
  final String? doctorId;
  final TopDoctorsModel? doctor;

  const BookingView({super.key, this.doctorId, this.doctor});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<AppointmentCubit>();

        // Set doctor information
        if (doctor != null) {
          cubit.setSelectedDoctor(doctor!);
          // Fetch availability when doctor is selected
          cubit.fetchDoctorAvailability(doctor!.id!);
        } else if (doctorId != null) {
          cubit.setSelectedDoctorId(doctorId!);
          // Fetch availability when doctor is selected
          cubit.fetchDoctorAvailability(doctorId!);
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
    final cubit = context.read<AppointmentCubit>();
    return !_isBooked(day) &&
        day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        cubit.isDateAvailable(day);
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
                    // Availability Loading Indicator
                    BlocBuilder<AppointmentCubit, AppointmentState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          availabilityLoading:
                              () => Container(
                                padding: EdgeInsets.all(16.h),
                                child: Column(
                                  children: [
                                    const CircularProgressIndicator(),
                                    verticalSpace(height: 8.h),
                                    Text(
                                      'Loading doctor availability...',
                                      style: Styles.font16Black500Weight
                                          .copyWith(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),

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
                            final cubit = context.read<AppointmentCubit>();
                            bool isAvailable = cubit.isDateAvailable(day);

                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    isAvailable
                                        ? ColorManager.primaryBlue.withOpacity(
                                          0.1,
                                        )
                                        : Colors.transparent,
                                border:
                                    isAvailable
                                        ? Border.all(
                                          color: ColorManager.primaryBlue
                                              .withOpacity(0.3),
                                          width: 1,
                                        )
                                        : null,
                              ),
                              child: Center(
                                child: Text(
                                  dayText,
                                  style: Styles.font16Black500Weight.copyWith(
                                    color:
                                        isAvailable
                                            ? ColorManager.primaryBlue
                                            : Colors.black,
                                    fontWeight:
                                        isAvailable
                                            ? FontWeight.w600
                                            : FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // Calendar Legend
                    BlocBuilder<AppointmentCubit, AppointmentState>(
                      builder: (context, state) {
                        final cubit = context.read<AppointmentCubit>();

                        return state.maybeWhen(
                          availabilityLoaded:
                              (availabilityResponse) => Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 8.h,
                                ),
                                padding: EdgeInsets.all(12.h),
                                decoration: BoxDecoration(
                                  color: ColorManager.primaryBlue.withOpacity(
                                    0.05,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: ColorManager.primaryBlue.withOpacity(
                                      0.2,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Available Days:',
                                      style: Styles.font16Black500Weight
                                          .copyWith(fontSize: 14.sp),
                                    ),
                                    verticalSpace(height: 4.h),
                                    Wrap(
                                      children:
                                          cubit.doctorAvailability!.availability
                                              .map((dayAvail) {
                                                return Container(
                                                  margin: EdgeInsets.only(
                                                    right: 8.w,
                                                    bottom: 4.h,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 8.w,
                                                    vertical: 4.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorManager
                                                        .primaryBlue
                                                        .withOpacity(0.1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    border: Border.all(
                                                      color: ColorManager
                                                          .primaryBlue
                                                          .withOpacity(0.3),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    dayAvail.day
                                                            .split('')
                                                            .first
                                                            .toUpperCase() +
                                                        dayAvail.day.substring(
                                                          1,
                                                        ),
                                                    style: Styles
                                                        .font16Black500Weight
                                                        .copyWith(
                                                          fontSize: 12.sp,
                                                          color:
                                                              ColorManager
                                                                  .primaryBlue,
                                                        ),
                                                  ),
                                                );
                                              })
                                              .toList(),
                                    ),
                                  ],
                                ),
                              ),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
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

                    BlocBuilder<AppointmentCubit, AppointmentState>(
                      builder: (context, state) {
                        final cubit = context.read<AppointmentCubit>();
                        List<String> availableTimeSlots = [];

                        if (_selectedDay != null &&
                            cubit.doctorAvailability != null) {
                          availableTimeSlots = cubit
                              .getAvailableTimeSlotsForDate(_selectedDay!);
                        }

                        // Show message if no date selected or no slots available
                        if (_selectedDay == null) {
                          return Container(
                            height: 200.h,
                            padding: EdgeInsets.all(16.h),
                            child: Center(
                              child: Text(
                                'Please select a date to view available time slots',
                                style: Styles.font16Black500Weight.copyWith(
                                  color: Colors.grey,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }

                        if (availableTimeSlots.isEmpty &&
                            cubit.doctorAvailability != null) {
                          return Container(
                            height: 200.h,
                            padding: EdgeInsets.all(16.h),
                            child: Center(
                              child: Text(
                                'No available time slots for the selected date',
                                style: Styles.font16Black500Weight.copyWith(
                                  color: Colors.grey,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }

                        return TimeSlotsGrid(
                          availableSlots: availableTimeSlots,
                          onSlotSelected: (timeSlot) {
                            setState(() {
                              _selectedTimeSlot = timeSlot;
                            });
                            // Update cubit with selected time slot
                            cubit.setSelectedTimeSlot(timeSlot);
                          },
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
