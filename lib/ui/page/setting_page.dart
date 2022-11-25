import 'package:fengchiabi/ui/app_route_util.dart';
import 'package:fengchiabi/ui/fragment/setting_fragment.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int pageIndex = 3;

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
      body: const Center(
        child: SettingFragment(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (int num) {
          setState(() {
            Navigator.pushAndRemoveUntil(
                context, getPageRouteWithBottomNavIndex(num), (route) => false);
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
