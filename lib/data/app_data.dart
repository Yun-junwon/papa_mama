import 'package:get/get.dart';

class AppData extends GetxController {
  bool _isLoadingScreen = false;

  bool get isLoadingScreen => _isLoadingScreen;

  set isLoadingScreen(bool isLoadingScreen) {
    _isLoadingScreen = isLoadingScreen;
    update();
  }
}
