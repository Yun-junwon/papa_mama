import 'package:cell_calendar/cell_calendar.dart';
import 'package:papa_mama/common_import.dart';

enum SelectedTab { week, month }

class BabyFoodScreen extends StatefulWidget {
  @override
  _BabyFoodScreenState createState() => _BabyFoodScreenState();
}

class _BabyFoodScreenState extends State<BabyFoodScreen> {
  bool _selectedWeek = false;
  int _visible = 1;

  List<String> _weeks = ['일', '월', '화', '수', '목', '금', '토'];
  List<String> _breakfast = [
    '아침메뉴',
    '아침메뉴',
    '아침메뉴',
    '아침메뉴',
    '아침메뉴',
    '아침메뉴',
    '아침메뉴'
  ];
  List<String> _luncheon = [
    '점심메뉴',
    '점심메뉴',
    '점심메뉴',
    '점심메뉴',
    '점심메뉴',
    '점심메뉴',
    '점심메뉴'
  ];
  List<String> _evening = [
    '저녁메뉴',
    '저녁메뉴',
    '저녁메뉴',
    '저녁메뉴',
    '저녁메뉴',
    '저녁메뉴',
    '저녁메뉴'
  ];
  String _snack = '간식';
  String _sideMenu1 = '바나나 맛있다';
  String _sideMenu2 = '토마토가 더 맛있다';
  String _sideMenu3 = '키위가 젤 좋아';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite_80Color,
      appBar: _babyFoodAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 9.h),
          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastOutSlowIn,
            height: _visible == 0 ? 0.h : 110.h,
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 180.w,
                  height: 110.h,
                  color: kWhite_100Color,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      '오늘의 이유식',
                      style: GoogleFonts.notoSans(
                          color: kBlushTextColor, fontSize: 8.sp),
                    ),
                  ),
                ),
                Container(width: 180.w, height: 84.h, color: kPaleColor),
                Container(
                  width: 160.w,
                  height: 63.5.h,
                  //color: kWhite_100Color,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite_100Color),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 6.w, top: 6.h, bottom: 6.h),
                        child: SizedBox(
                          child: Placeholder(
                            fallbackHeight: 51.h,
                            fallbackWidth: 51.w,
                            color: kWhite_80Color,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Padding(
                        padding: EdgeInsets.only(top: 12.5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '아침 메뉴~~~~~~~',
                              style: GoogleFonts.notoSans(
                                  color: kBlackTextColor, fontSize: 7.5.sp),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              '점심 메뉴~~~~~~~',
                              style: GoogleFonts.notoSans(
                                  color: kPastelRedColor, fontSize: 7.5.sp),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              '저녁 메뉴~~~~~~~',
                              style: GoogleFonts.notoSans(
                                  color: kDarkSkyBlueColor, fontSize: 7.5.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          _selectedWeekButton(),
          _selectedIndicator(),
          _selectedWeek == true ? _babyFoodWeeks() : _babyFoodMonth(),
        ],
      ),
    );
  }

  Container _babyFoodMonth() {
    return Container(
        height: 150.h,
        child: CellCalendar(
          daysOfTheWeekBuilder: (dayIndex) {
            final labels = ['일', '월', '화', '수', '목', '금', '토'];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 3.h),
              child: Container(
                width: 10.w,
                height: 10.h,
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
        ));
  }

  Expanded _babyFoodWeeks() {
    return Expanded(
        child: ListView.builder(
      itemCount: _weeks.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        child: Container(
            width: 160.w,
            height: 90.h,
            child: Card(
              color: kWhite_100Color,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0.w, top: 9.0.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 14.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: kBlushColor),
                          child: Center(
                              child: Text(
                            _weeks[index],
                            style: GoogleFonts.notoSans(
                                color: kWhite_100Color, fontSize: 7.sp),
                          )),
                        ),
                        SizedBox(width: 22.5.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _breakfast[index],
                              style: GoogleFonts.notoSans(
                                  color: kBlackTextColor, fontSize: 7.5.sp),
                            ),
                            Text(
                              _luncheon[index],
                              style: GoogleFonts.notoSans(
                                  color: kPastelRedColor, fontSize: 7.5.sp),
                            ),
                            Text(
                              _evening[index],
                              style: GoogleFonts.notoSans(
                                  color: kDarkSkyBlueColor, fontSize: 7.5.sp),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: kPaleGreyColor,
                      thickness: 0.5.h,
                      height: 10.h,
                      endIndent: 6.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.2.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _snack,
                            style: GoogleFonts.notoSans(
                                color: kBlushTextColor, fontSize: 7.5.sp),
                          ),
                          SizedBox(width: 22.5.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _sideMenu1,
                                style: GoogleFonts.notoSans(
                                    color: kBlackTextColor, fontSize: 7.5.sp),
                              ),
                              Text(
                                _sideMenu2,
                                style: GoogleFonts.notoSans(
                                    color: kBlackTextColor, fontSize: 7.5.sp),
                              ),
                              Text(
                                _sideMenu3,
                                style: GoogleFonts.notoSans(
                                    color: kBlackTextColor, fontSize: 7.5.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    ));
  }

  AppBar _babyFoodAppBar() {
    return AppBar(
      backgroundColor: kWhite_80Color,
      elevation: 0.0,
      title: Text(
        '이유식',
        style: GoogleFonts.notoSans(fontSize: 8.sp, color: kBlackAppbarColor),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 4.h, right: 10.w, bottom: 4.h),
          child: Container(
            width: 34.w,
            height: 16.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5.r), color: kBlushColor),
            child: Center(
              child: Text(
                'D+36',
                style: GoogleFonts.notoSans(
                    color: kWhite_100Color, fontSize: 9.sp),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _selectedIndicator() {
    return AnimatedContainer(
      alignment: _selectedWeek ? Alignment.centerLeft : Alignment.centerRight,
      duration: Duration(milliseconds: 300),
      child: Container(
        height: 2.h,
        width: 90.w,
        color: kBlush_borderColor,
      ),
      curve: Curves.fastOutSlowIn,
    );
  }

  Row _selectedWeekButton() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedWeek = true;
                  _visible = 0;
                });
              },
              child: Text(
                '주간',
                style: GoogleFonts.notoSans(
                    fontSize: 8.sp,
                    color: _selectedWeek ? kBlushTextColor : kBlackColor),
              )),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedWeek = false;
                  _visible = 1;
                });
              },
              child: Text(
                '월간',
                style: GoogleFonts.notoSans(
                    fontSize: 8.sp,
                    color: _selectedWeek ? kBlackColor : kBlushTextColor),
              )),
        )
      ],
    );
  }
}
