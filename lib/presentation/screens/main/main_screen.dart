import 'package:flutter/material.dart';
import 'package:ui_wallet_app/core/config/size_config.dart';

import '../../../data/models/mock_tab_model.dart';
import 'pages/home/home_page.dart';
import 'pages/statistics/statistics_page.dart';
import 'pages/wallet/wallet_page.dart';
import 'setting/setting_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List<Widget> pages = [
    HomePage(),
    WalletPage(),
    StatisticsPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: pages[currentTab],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentTab,
      onTap: _moveTab,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 18,
      items: mockListTab
          .map(
            (tab) => BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/${tab.iconName}"),
                ),
                label: tab.label),
          )
          .toList(),
    );
  }

  void _moveTab(int index) => setState(() => currentTab = index);
}
