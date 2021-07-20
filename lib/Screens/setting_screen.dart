import '../common_import.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _selectedMonth = true;
  int _selectedMeal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite_100Color,
      appBar: AppBar(
        backgroundColor: kWhite_100Color,
        elevation: 0.0,
        title: Text(
          '설정',
          style: GoogleFonts.notoSans(fontSize: 8.sp, color: kBlackColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 7.5.w, top: 11.h, right: 7.5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '프로필 개월 수',
              style: GoogleFonts.notoSans(
                color: kBlackTextColor,
                fontSize: 7.5.sp,
              ),
            ),
            SizedBox(height: 8.h),
            _selectedMonthMenu(),
            SizedBox(height: 11.h),
            Text(
              '캘린더 표시',
              style: GoogleFonts.notoSans(
                color: kBlackTextColor,
                fontSize: 7.5.sp,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedMeal = 0;
                      });
                    },
                    child: Text(
                      '이유식',
                      style: GoogleFonts.notoSans(
                          color: kGunmetalColor, fontSize: 7.5.sp),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (_) => _selectedMeal == 0
                                ? kBlushColor
                                : kLightSkyBlueColor)),
                  ),
                ),
                SizedBox(width: 5.5.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedMeal = 1;
                      });
                    },
                    child: Text(
                      '수유',
                      style: GoogleFonts.notoSans(
                          color: kGunmetalColor, fontSize: 7.5.sp),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (_) => _selectedMeal == 1
                                ? kBlushColor
                                : kLightSkyBlueColor)),
                  ),
                ),
                SizedBox(width: 5.5.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedMeal = 2;
                      });
                    },
                    child: Text(
                      '이유식+수유',
                      style: GoogleFonts.notoSans(
                          color: kGunmetalColor, fontSize: 7.5.sp),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (_) => _selectedMeal == 2
                                ? kBlushColor
                                : kLightSkyBlueColor)),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedMeal = 3;
                });
              },
              child: Text(
                '이유식+수유+간식',
                style: GoogleFonts.notoSans(
                    color: kGunmetalColor, fontSize: 7.5.sp),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((_) =>
                      _selectedMeal == 3 ? kBlushColor : kLightSkyBlueColor)),
            ),
          ],
        ),
      ),
    );
  }

  Row _selectedMonthMenu() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedMonth = true;
              });
            },
            child: Text('월 별',
                style: GoogleFonts.notoSans(
                    color: _selectedMonth ? kWhite_80Color : kBlackColor,
                    fontSize: 7.5.sp)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (_) => _selectedMonth ? kBlushColor : kLightSkyBlueColor)),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedMonth = false;
              });
            },
            child: Text('일 별',
                style: GoogleFonts.notoSans(
                    color: _selectedMonth ? kBlackColor : kWhite_80Color,
                    fontSize: 7.5.sp)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (_) => _selectedMonth ? kLightSkyBlueColor : kBlushColor)),
          ),
        ),
      ],
    );
  }

  // void onSelectedCalendar(int index){
  //   print(index);
  //   _selectedCalendar = index;
  // }
}
