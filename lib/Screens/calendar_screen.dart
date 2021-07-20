import '../common_import.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
//  final _sampleEvents = sampleEvents();
  bool selectedBabyFood = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite_80Color,
      appBar: AppBar(
        backgroundColor: kWhite_80Color,
        elevation: 0.0,
        title: Text(
          '5월',
          style: GoogleFonts.notoSans(fontSize: 8.sp, color: kBlackAppbarColor),
        ),
      ),
      body: Column(
        children: [
          _selectedBabyFood(),
          _selectedIndicator(),
          Container(
              height: 250.h,
              child: CellCalendar(
                onCellTapped: (date) {
                  Get.to(DetailInputScreen());
                },
                daysOfTheWeekBuilder: (dayIndex) {
                  final labels = ['일', '월', '화', '수', '목', '금', '토'];
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.0.w, vertical: 3.0.h),
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
                            color: kWhite_100Color,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  );
                },
              )),
          //SetCalendarMonth()
        ],
      ),
    );
  }

  Widget _selectedIndicator() {
    return AnimatedContainer(
      alignment:
          selectedBabyFood ? Alignment.centerLeft : Alignment.centerRight,
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 90.w,
        height: 2.h,
        color: kBlush_borderColor,
      ),
      curve: Curves.fastOutSlowIn,
    );
  }

  Row _selectedBabyFood() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                selectedBabyFood = true;
              });
            },
            child: Text(
              '이유식',
              style: GoogleFonts.notoSans(
                  fontSize: 8.sp,
                  color: selectedBabyFood ? kBlushTextColor : kBlackColor),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                selectedBabyFood = false;
              });
            },
            child: Text(
              '간식',
              style: GoogleFonts.notoSans(
                  fontSize: 8.sp,
                  color: selectedBabyFood ? kBlackColor : kBlushTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
