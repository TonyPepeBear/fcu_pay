import 'package:fengchiabi/ui/fragment/info_fragment.dart';
import 'package:fengchiabi/ui/fragment/map_fragment.dart';
import 'package:fengchiabi/ui/fragment/setting_fragment.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("FCU Pay"),
            Spacer(),
            Text("\$ 000"),
          ],
        ),
      ),
      body: Center(
        child: bottomItems[pageIndex].page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (int num) {
          setState(() {
            pageIndex = num;
          });
        },
        items: bottomItems.map((item) {
          return BottomNavigationBarItem(
            icon: item.icon,
            label: item.label,
          );
        }).toList(),
      ),
    );
  }
}

List<BottomItem> bottomItems = [
  const BottomItem(
    icon: Icon(Icons.map_outlined),
    label: "Map",
    page: MapFragment(),
  ),
  const BottomItem(
    icon: Icon(Icons.wallet),
    label: "Wallet",
    page: Text("Wallet"),
  ),
  const BottomItem(
    icon: Icon(Icons.info_outline),
    label: "Info",
    page: InfoFragment(),
  ),
  const BottomItem(
    icon: Icon(Icons.settings),
    label: "Settings",
    page: SettingFragment(),
  ),
];

class BottomItem {
  final String label;
  final Icon icon;
  final Widget page;

  const BottomItem(
      {required this.label, required this.icon, required this.page});
}
