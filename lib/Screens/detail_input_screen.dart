import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../common_import.dart';

class DetailInputScreen extends StatefulWidget {
  @override
  _DetailInputScreenState createState() => _DetailInputScreenState();
}

class _DetailInputScreenState extends State<DetailInputScreen> {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  int _selectedMealStep = 0;
  int _value = 0;

  // List items = List.generate(
  //     3, (index) => IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)));

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite_100Color,
      appBar: _detailScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이유식 단계',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _mealStepButton(),
              SizedBox(height: 12.h),
              Text(
                '이유식',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 7.h),
              _mealEatingAmount(),
              SizedBox(height: 5.h),
              _mealEatingAmount(),
              SizedBox(height: 5.h),
              _mealEatingAmount(),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    '아침',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                  SizedBox(width: 45.w),
                  Text(
                    '점심',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                  SizedBox(width: 45.w),
                  Text(
                    '저녁',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              _selectedMealTime(context),
              SizedBox(height: 12.h),
              Text(
                '메모',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _momoMeal(),
              SizedBox(height: 12.h),
              Text(
                '사진',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _addPictureMeal(),
              SizedBox(height: 12.h),
              Text(
                '수유',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _selectedNursing(context),
              SizedBox(height: 6.h),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       decoration: BoxDecoration(
              //           border: Border.all(color: kLightSkyBlueColor),
              //           borderRadius: BorderRadius.circular(2.r)),
              //       child: Center(
              //         child: DropdownButton<int>(
              //           value: _value,
              //           items: [
              //             DropdownMenuItem(
              //               child: Text(
              //                 '분유        ',
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.notoSans(
              //                     color: kBlackTextColor, fontSize: 7.5.sp),
              //               ),
              //               value: 0,
              //             ),
              //             DropdownMenuItem(
              //               child: Text(
              //                 '모유        ',
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.notoSans(
              //                     color: kBlackTextColor, fontSize: 7.5.sp),
              //               ),
              //               value: 1,
              //             ),
              //           ],
              //           onChanged: (value) {
              //             setState(() {
              //               _value = value!;
              //             });
              //           },
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         onTap: () {
              //           //FocusScope.of(context).requestFocus(new FocusNode());
              //           DatePicker.showTime12hPicker(
              //             context,
              //             showTitleActions: true,
              //             locale: LocaleType.ko,
              //           );
              //         },
              //         style: GoogleFonts.notoSans(),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(vertical: 3.h),
              //             hintText: '09:14',
              //             focusedBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //               color: kBlushColor,
              //               width: 0.8.w,
              //             )),
              //             border: OutlineInputBorder(
              //                 borderSide:
              //                     BorderSide(color: kLightSkyBlueColor))),
              //       ),
              //     ),
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         keyboardType: TextInputType.number,
              //         style: GoogleFonts.notoSans(),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(vertical: 3.h),
              //             hintText: '150ml',
              //             focusedBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //               color: kBlushColor,
              //               width: 0.8.w,
              //             )),
              //             border: OutlineInputBorder(
              //                 borderSide:
              //                     BorderSide(color: kLightSkyBlueColor))),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 8.h),
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: kBlushColor,
                  size: 13.r,
                ),
                onPressed: () {},
              ),
              //SizedBox(height: 14.h),
              Divider(
                color: kLightSkyBlueColor,
                thickness: 0.5.h,
                height: 30.h,
              ),
              Text(
                '간식',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 7.h),
              _mealEatingAmount(),
              SizedBox(height: 5.h),
              _mealEatingAmount(),
              SizedBox(height: 5.h),
              _mealEatingAmount(),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    '아침',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                  SizedBox(width: 45.w),
                  Text(
                    '점심',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                  SizedBox(width: 45.w),
                  Text(
                    '저녁',
                    style: GoogleFonts.notoSans(
                        color: kBlushTextColor, fontSize: 6.sp),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              _selectedMealTime(context),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         onTap: () {
              //           //FocusScope.of(context).requestFocus(new FocusNode());
              //           DatePicker.showTime12hPicker(
              //             context,
              //             showTitleActions: true,
              //             locale: LocaleType.ko,
              //           );
              //         },
              //         style: GoogleFonts.notoSans(),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(vertical: 3.h),
              //             hintText: '09:14',
              //             focusedBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //               color: kBlushColor,
              //               width: 0.8.w,
              //             )),
              //             border: OutlineInputBorder(
              //                 borderSide:
              //                     BorderSide(color: kLightSkyBlueColor))),
              //       ),
              //     ),
              //     //SizedBox(width: 4.w),
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         onTap: () {
              //           //FocusScope.of(context).requestFocus(new FocusNode());
              //           DatePicker.showTime12hPicker(
              //             context,
              //             showTitleActions: true,
              //             locale: LocaleType.ko,
              //           );
              //         },
              //         style: GoogleFonts.notoSans(),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(vertical: 3.h),
              //             hintText: '12:40',
              //             focusedBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //               color: kBlushColor,
              //               width: 0.8.w,
              //             )),
              //             border: OutlineInputBorder(
              //                 borderSide:
              //                     BorderSide(color: kLightSkyBlueColor))),
              //       ),
              //     ),
              //     //SizedBox(width: 4.w),
              //     Container(
              //       width: 50.w,
              //       height: 18.h,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         onTap: () {
              //           //FocusScope.of(context).requestFocus(new FocusNode());
              //           DatePicker.showTime12hPicker(
              //             context,
              //             showTitleActions: true,
              //             locale: LocaleType.ko,
              //           );
              //         },
              //         style: GoogleFonts.notoSans(),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.symmetric(vertical: 3.h),
              //             hintText: '19:40',
              //             focusedBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //               color: kBlushColor,
              //               width: 0.8.w,
              //             )),
              //             border: OutlineInputBorder(
              //                 borderSide:
              //                     BorderSide(color: kLightSkyBlueColor))),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                '메모',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _momoMeal(),
              SizedBox(height: 12.h),
              Text(
                '사진',
                style: GoogleFonts.notoSans(
                    color: kBlackTextColor, fontSize: 8.sp),
              ),
              SizedBox(height: 8.h),
              _addPictureMeal(),
            ],
          ),
        ),
      ),
    );
  }

  Row _selectedNursing(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50.w,
          height: 18.h,
          decoration: BoxDecoration(
              border: Border.all(color: kLightSkyBlueColor),
              borderRadius: BorderRadius.circular(2.r)),
          child: Center(
            child: DropdownButton<int>(
              dropdownColor: kWhite_100Color,
              elevation: 5,
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text(
                    '분유        ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                        color: kBlackTextColor, fontSize: 7.5.sp),
                  ),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text(
                    '모유        ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                        color: kBlackTextColor, fontSize: 7.5.sp),
                  ),
                  value: 1,
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
          ),
        ),
        Container(
          width: 50.w,
          height: 18.h,
          child: TextFormField(
            textAlign: TextAlign.center,
            onTap: () {
              //FocusScope.of(context).requestFocus(new FocusNode());
              DatePicker.showTime12hPicker(
                context,
                showTitleActions: true,
                locale: LocaleType.ko,
              );
            },
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                hintText: '09:14',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
        Container(
          width: 50.w,
          height: 18.h,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                hintText: '150ml',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
      ],
    );
  }

  Row _addPictureMeal() {
    return Row(
      children: [
        Container(
          width: 47.w,
          height: 47.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: kWhite_80Color,
              border: Border.all(color: kPaleGreyColor)),
          child: IconButton(
            icon: Icon(
              Icons.add_circle,
            ),
            color: kBlushColor,
            iconSize: 13.r,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Container _momoMeal() {
    return Container(
      width: 160.w,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 7,
        style: GoogleFonts.notoSans(),
        //strutStyle: StrutStyle(height: 73.h),
        decoration: InputDecoration(
            hintText: 'ex) 재료, 이상증세, 아기반응',
            hintStyle: GoogleFonts.notoSans(color: kLightBlueGreyColor),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: kBlushColor,
              width: 0.8.w,
            )),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: kLightSkyBlueColor))),
      ),
    );
  }

  Row _selectedMealTime(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50.w,
          height: 18.h,
          child: TextFormField(
            textAlign: TextAlign.center,
            onTap: () {
              //FocusScope.of(context).requestFocus(new FocusNode());
              DatePicker.showTime12hPicker(
                context,
                showTitleActions: true,
                locale: LocaleType.ko,
              );
            },
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                hintText: '09:10',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
        //SizedBox(width: 4.w),
        Container(
          width: 50.w,
          height: 18.h,
          child: TextFormField(
            textAlign: TextAlign.center,
            onTap: () {
              //FocusScope.of(context).requestFocus(new FocusNode());
              DatePicker.showTime12hPicker(
                context,
                showTitleActions: true,
                locale: LocaleType.ko,
              );
            },
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                hintText: '12:30',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
        //SizedBox(width: 4.w),
        Container(
          width: 50.w,
          height: 18.h,
          child: TextFormField(
            textAlign: TextAlign.center,
            onTap: () {
              //FocusScope.of(context).requestFocus(new FocusNode());
              DatePicker.showTime12hPicker(
                context,
                showTitleActions: true,
                locale: LocaleType.ko,
              );
            },
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3.h),
                hintText: '17:50',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
      ],
    );
  }

  Row _mealEatingAmount() {
    return Row(
      children: [
        Container(
          width: 87.w,
          height: 24.h,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '이유식',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 4.w),
        Container(
          width: 69.w,
          height: 24.h,
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: GoogleFonts.notoSans(),
            decoration: InputDecoration(
                hintText: '먹은양',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: kBlushColor,
                  width: 0.8.w,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kLightSkyBlueColor))),
          ),
        ),
      ],
    );
  }

  Row _mealStepButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedMealStep = 0;
            });
          },
          child: Text(
            '초기1',
            style: GoogleFonts.notoSans(
                color:
                    _selectedMealStep == 0 ? kWhite_100Color : kGunmetalColor,
                fontSize: 7.5.sp),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((_) =>
                  _selectedMealStep == 0 ? kBlushColor : kWhite_80Color)),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedMealStep = 1;
            });
          },
          child: Text(
            '초기2',
            style: GoogleFonts.notoSans(
                color:
                    _selectedMealStep == 1 ? kWhite_100Color : kGunmetalColor,
                fontSize: 7.5.sp),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((_) =>
                  _selectedMealStep == 1 ? kBlushColor : kWhite_80Color)),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedMealStep = 2;
            });
          },
          child: Text(
            '초중기',
            style: GoogleFonts.notoSans(
                color:
                    _selectedMealStep == 2 ? kWhite_100Color : kGunmetalColor,
                fontSize: 7.5.sp),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((_) =>
                  _selectedMealStep == 2 ? kBlushColor : kWhite_80Color)),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedMealStep = 3;
            });
          },
          child: Text(
            '중기',
            style: GoogleFonts.notoSans(
                color:
                    _selectedMealStep == 3 ? kWhite_100Color : kGunmetalColor,
                fontSize: 7.5.sp),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((_) =>
                  _selectedMealStep == 3 ? kBlushColor : kWhite_80Color)),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedMealStep = 4;
            });
          },
          child: Text(
            '후기',
            style: GoogleFonts.notoSans(
                color:
                    _selectedMealStep == 4 ? kWhite_100Color : kGunmetalColor,
                fontSize: 7.5.sp),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((_) =>
                  _selectedMealStep == 4 ? kBlushColor : kWhite_80Color)),
        ),
      ],
    );
  }

  AppBar _detailScreenAppBar() {
    return AppBar(
      backgroundColor: kWhite_100Color,
      elevation: 0.0,
      title: Text(
        '2021.05.02',
        style: GoogleFonts.notoSans(color: kBlackTextColor, fontSize: 9.sp),
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
}
