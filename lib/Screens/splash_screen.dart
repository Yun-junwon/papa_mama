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
                color: kPaleRedColor,
                width: 94.w,
                height: 22.5.h,
                child: Center(
                  child: Text('빠빠맘마',
                      style: GoogleFonts.notoSans(
                        fontSize: 13.sp,
                        color: kWhite_100Color,
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
