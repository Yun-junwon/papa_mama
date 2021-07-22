import 'dart:async';

import '../common_import.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Future.delayed(Duration(milliseconds: 2000))
        .then((value) => Get.off(() => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          // child: Image.asset('assets/logo.png'),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/gabrielleHendersonDjY0XDwceumUnsplashCopy@3x.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: kPaleRedColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                // color: kPaleRedColor,
                width: 70.w,
                height: 70.h,
                child: Center(
                  child: Text(
                    '빠빠\n맘마',
                    style: TextStyle(
                      color: kWhite_100Color,
                      fontSize: 26.sp,
                      height: 0.8,
                      fontFamily: 'yanolja',
                    ),
                  ),
                  // style: GoogleFonts.notoSans(
                  //   fontSize: 26.sp,
                  //   color: kWhite_100Color,
                  // )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
