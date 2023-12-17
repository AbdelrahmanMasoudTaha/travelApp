import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/components/app_text.dart';
import 'package:travel/pages/navpages/bars_bage.dart';
import 'package:travel/pages/navpages/home_page.dart';
import 'package:travel/pages/navpages/me_page.dart';
import 'package:travel/pages/navpages/search_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel/pages/shared/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [HomePage(), BarsPage(), SearchPage(), MePage()];

    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar:GNav(
        color: Colors.black,
        gap: 7,
        tabActiveBorder: Border.all(color: Colors.black, width: 1),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        tabBackgroundColor: AppColors.mainColor.withOpacity(0.3),
        selectedIndex: currentIndex,

        onTabChange: onTap,
        tabs: [
          GButton(icon: Icons.apps,text: "home"),
          GButton(icon: Icons.bar_chart,text: "bars"),
          GButton(icon: Icons.search ,text: "search"),
          GButton(icon: Icons.person ,text: "me"),
        ],

      ) ,

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //
      //   selectedItemColor: Colors.black54,
      //   unselectedItemColor: Colors.grey.withOpacity(0.5),
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.apps), label: "home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "bars"),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "me"),
      //   ],
      //   onTap:(value) {
      //     setState(() {
      //       currentIndex=value;
      //     });
      //
      //   },
      // ),
    );
  }
}
