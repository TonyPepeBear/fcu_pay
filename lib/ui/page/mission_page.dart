import 'package:fengchiabi/ui/app_route_util.dart';
import 'package:fengchiabi/ui/fragment/mission_fragment.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({Key? key}) : super(key: key);

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  int pageIndex = 2;

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
        child: MissionFragment(),
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
