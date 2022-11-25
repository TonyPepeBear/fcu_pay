import 'package:fengchiabi/ui/page/home_page.dart';
import 'package:fengchiabi/ui/page/mission_page.dart';
import 'package:fengchiabi/ui/page/setting_page.dart';
import 'package:fengchiabi/ui/page/wallet_page.dart';
import 'package:flutter/material.dart';

Route getPageRouteWithBottomNavIndex(int i) {
  Widget w = const HomePage();
  switch (i) {
    case 1:
      w = const WalletPage();
      break;
    case 2:
      w = const MissionPage();
      break;
    case 3:
      w = const SettingPage();
      break;
    default:
      w = const HomePage();
      break;
  }
  return PageRouteBuilder(
      pageBuilder: (context, a1, a2) => w,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero);
}

List<BottomItem> bottomItems = [
  const BottomItem(
    icon: Icon(Icons.map_outlined),
    label: "Map",
  ),
  const BottomItem(
    icon: Icon(Icons.wallet),
    label: "Wallet",
  ),
  const BottomItem(
    icon: Icon(Icons.info_outline),
    label: "Info",
  ),
  const BottomItem(
    icon: Icon(Icons.settings),
    label: "Settings",
  ),
];

class BottomItem {
  final String label;
  final Icon icon;

  const BottomItem({required this.label, required this.icon});
}
