import 'common_import.dart';
import 'screens/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(180, 380),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlynnApps',
        home: SplashScreen(),
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
      ),
    );
  }
}
