import 'package:google_fonts/google_fonts.dart';
import 'package:papa_mama/common_import.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kVeryLightPinkColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17.5.w, right: 18.5.w, top: 23.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이름을 입력해주세요 :)',
                style: GoogleFonts.notoSans(
                  color: kPaleRedColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                decoration: BoxDecoration(
                  color: kWhite_80Color,
                  border: Border.all(
                    color: kBlush_borderColor,
                    width: 0.5.w,
                  ),
                ),
                height: 26.h,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '뽁뽁이',
                      hintStyle:
                          TextStyle(fontSize: 7.sp, color: kLightBlueGreyColor),
                      contentPadding: EdgeInsets.fromLTRB(10.w, 8.h, 0, 8.h),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '생년월일을 입력해주세요 :)',
                style: GoogleFonts.notoSans(
                  color: kPaleRedColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                decoration: BoxDecoration(
                  color: kWhite_80Color,
                  border: Border.all(
                    color: kBlush_borderColor,
                    width: 0.5.w,
                  ),
                ),
                height: 26.h,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '뽁뽁이',
                      hintStyle:
                          TextStyle(fontSize: 7.sp, color: kLightBlueGreyColor),
                      contentPadding: EdgeInsets.fromLTRB(10.w, 8.h, 0, 8.h),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '성별을 입력해주세요 :)',
                style: GoogleFonts.notoSans(
                  color: kPaleRedColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                decoration: BoxDecoration(
                  color: kWhite_80Color,
                  border: Border.all(
                    color: kBlush_borderColor,
                    width: 0.5.w,
                  ),
                ),
                height: 26.h,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '남 / 여',
                      hintStyle:
                          TextStyle(fontSize: 7.sp, color: kLightBlueGreyColor),
                      contentPadding: EdgeInsets.fromLTRB(10.w, 8.h, 0, 8.h),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '이유식 시작일을 입력해주세요 :)',
                style: GoogleFonts.notoSans(
                  color: kPaleRedColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                decoration: BoxDecoration(
                  color: kWhite_80Color,
                  border: Border.all(
                    color: kBlush_borderColor,
                    width: 0.5.w,
                  ),
                ),
                height: 26.h,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '날짜',
                      hintStyle:
                          TextStyle(fontSize: 7.sp, color: kLightBlueGreyColor),
                      contentPadding: EdgeInsets.fromLTRB(10.w, 8.h, 0, 8.h),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                '사진을 등록하세요 :)',
                style: GoogleFonts.notoSans(
                  color: kPaleRedColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Container(
                width: 144.w,
                height: 80.h,
                child: IconButton(
                  icon: Icon(Icons.add_circle),
                  color: kBlushColor,
                  iconSize: 54,
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  color: kWhite_80Color,
                  border: Border.all(
                    color: kBlush_borderColor,
                    width: 0.5.w,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: 180.w,
          height: 26.h,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((_) => kBlushColor)),
            onPressed: () {
              Get.off(SelectedBtnMenu());
            },
            child: Text('확인',
                style: GoogleFonts.notoSans(
                  color: kWhite_80Color,
                  fontSize: 9.sp,
                )),
          ),
        ),
      ),
    );
  }
}
