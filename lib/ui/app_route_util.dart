import 'package:fengchiabi/ui/fragment/info_fragment.dart';
import 'package:fengchiabi/ui/fragment/wallte_fragment.dart';
import 'package:fengchiabi/ui/page/app_page.dart';
import 'package:fengchiabi/ui/fragment/map_fragment.dart';
import 'package:fengchiabi/ui/fragment/setting_fragment.dart';
import 'package:flutter/material.dart';

Route getPageRouteWithBottomNavIndex(int i) {
  late Widget child;
  switch (i) {
    case 1:
      child = const WalletFragment();
      break;
    case 2:
      child = const InfoFragment();
      break;
    case 3:
      child = const SettingFragment();
      break;
    default:
      child = const MapFragment();
      break;
  }
  return PageRouteBuilder(
      pageBuilder: (context, a1, a2) => AppPage(pageIndex: i, child: child),
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
