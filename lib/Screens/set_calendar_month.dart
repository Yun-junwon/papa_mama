import '../common_import.dart';

class SetCalendarMonth extends StatefulWidget {
  @override
  _SetCalendarMonthState createState() => _SetCalendarMonthState();
}

class _SetCalendarMonthState extends State<SetCalendarMonth> {
  @override
  Widget build(BuildContext context) {
    // final _sampleEvents = sampleEvents();
    final cellCalendarController = CellCalendarPageController();
    return Scaffold(
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                //height: 200.h,
                child: CellCalendar(
                  cellCalendarPageController: cellCalendarController,
                  // events: _sampleEvents,
                  // onCellTapped: (date) {
                  //   final eventsOnTheDate = _sampleEvents.where((event) {
                  //     final eventDate = event.eventDate;
                  //     return eventDate.year == date.year &&
                  //         eventDate.month == date.month &&
                  //         eventDate.day == date.day;
                  //   }).toList();
                  //   Get.to(DetailInputScreen());
                  // },
                  daysOfTheWeekBuilder: (dayIndex) {
                    final labels = ['일', '월', '화', '수', '목', '금', '토'];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.0.w, vertical: 4.h),
                      child: Container(
                        width: 14.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: kBlushColor),
                        child: Center(
                          child: Text(
                            labels[dayIndex],
                            style: GoogleFonts.notoSans(
                                fontSize: 7.sp,
                                color: kWhite_80Color,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }));
  }
}
