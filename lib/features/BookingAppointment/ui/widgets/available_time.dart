import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class TimeSlotsGrid extends StatefulWidget {
  final List<String> disabledSlots;
  final Function(String)? onSlotSelected;

  const TimeSlotsGrid({
    Key? key,
    this.disabledSlots = const [],
    this.onSlotSelected,
  }) : super(key: key);

  @override
  _TimeSlotsGridState createState() => _TimeSlotsGridState();
}

class _TimeSlotsGridState extends State<TimeSlotsGrid> {
  List<String> timeSlots = [];
  String? selectedSlot;

  @override
  void initState() {
    super.initState();
    generateTimeSlots();
  }

  void generateTimeSlots() {
    final startHour = 4;
    final endHour = 11.30;

    for (int hour = startHour; hour <= endHour; hour++) {
      String h = hour.toString().padLeft(2, '0');
      timeSlots.add('$h:00');
      if (hour != endHour) {
        timeSlots.add('$h:30');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        height: 270,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 350,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: timeSlots.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16.sp,
                  crossAxisSpacing: 16.sp,
                  childAspectRatio: 2.3,
                ),
                itemBuilder: (context, index) {
                  String time = timeSlots[index];
                  bool isDisabled = widget.disabledSlots.contains(time);
                  bool isSelected = selectedSlot == time;
              
                  return GestureDetector(
                    onTap:
                        isDisabled
                            ? null
                            : () {
                              setState(() {
                                selectedSlot = time;
                              });
                              if (widget.onSlotSelected != null) {
                                widget.onSlotSelected!(time);
                              }
                            },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isDisabled
                                ? ColorManager.blurbuttongrey
                                : isSelected
                                ? ColorManager.blubuttonblue
                                : Colors.white,
                        border: Border.all(
                          color: isSelected ? ColorManager.primaryBlue : ColorManager.black,
                          width: isSelected ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        time,
                        style: TextStyle(
                          color: isDisabled ? Colors.grey : Colors.black,
                           fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
