import 'package:black_food_app/constants/color_constants.dart';
import 'package:black_food_app/ui/home/food_details.dart';
import 'package:black_food_app/ui/home/home.dart';
import 'package:black_food_app/widget/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  TabControllerState createState() => TabControllerState();
}

class TabControllerState extends State<BottomNavigationController> {
  int currentTab = 0;

  final List<Widget> screens = [
    const Home(),
    const FoodDetails(),
    Container(),
    Container(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const Home();

  bool circleButtonToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: screens[currentTab],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorConstants.mainColor2,
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavigationItem(
                icon: Icons.home_outlined,
                isSelected: currentTab == 0,
                onClick: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
              ),
              BottomNavigationItem(
                icon: Icons.verified_user_outlined,
                isSelected: currentTab == 1,
                onClick: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
              ),
              BottomNavigationItem(
                icon: Icons.list_outlined,
                isSelected: currentTab == 2,
                onClick: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
              ),
              BottomNavigationItem(
                icon: Icons.search_off_outlined,
                isSelected: currentTab == 3,
                onClick: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
    // return WillPopScope(
    //   onWillPop: () async {
    //     onWillPop(
    //       context: context,
    //       isExitFromApp: true,
    //       title: 'Are you sure you want to exit from this app?',
    //     );
    //     return true;
    //   },
    //   child: Scaffold(
    //     body: _children[_currentIndex],
    //     bottomNavigationBar: BottomNavigationBar(
    //       type: BottomNavigationBarType.shifting,
    //       onTap: onTabTapped,
    //       currentIndex: _currentIndex,
    //       elevation: 5,
    //       backgroundColor: Colors.black,
    //       showSelectedLabels: true,
    //       showUnselectedLabels: true,
    //       selectedItemColor: ColorConstant.appPrimaryColor,
    //       unselectedItemColor: Colors.grey,
    //       unselectedIconTheme: IconThemeData(color: Colors.grey),
    //       // selectedLabelStyle: TextStyle(color: Colors.blueAccent),
    //       // unselectedLabelStyle: TextStyle(color: Colors.black),
    //       items: <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //           // backgroundColor: ColorConstant.appPrimaryColor,
    //           icon: const Icon(Icons.home),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.summarize,
    //           ),
    //           label: "My",
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.add_chart,
    //           ),
    //           label: 'Category',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.person,
    //           ),
    //           label: "Profile",
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
