import '../common_import.dart';

class SelectedBtnMenu extends StatefulWidget {
  @override
  _SelectedBtnMenuState createState() => _SelectedBtnMenuState();
}

class _SelectedBtnMenuState extends State<SelectedBtnMenu> {
  int _selectedIndex = 0;
  PageController controller = PageController(initialPage: 0);

  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/group10Copy4@3x.png')),
        label: '이유식'),
    BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/group8Copy4@3x.png')),
      label: '달력',
    ),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/group5Copy4@3x.png')), label: '설정'),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/group11Copy3@3x.png')),
        label: '디테일'),
  ];

  List<Widget> _screen = [
    BabyFoodScreen(),
    CalendarScreen(),
    SettingScreen(),
    DetailInputScreen(),
    //AddScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screen,
        controller: controller,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite_100Color,
        unselectedLabelStyle:
            GoogleFonts.notoSans(fontSize: 10, color: kGunmetalColor),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            GoogleFonts.notoSans(fontSize: 10, color: kGunmetalColor),
        items: btmNavItems,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,
      ),
    );
  }

  void _onBtmItemClick(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
    controller.jumpToPage(index);
  }
}
