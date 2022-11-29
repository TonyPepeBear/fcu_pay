import 'package:fengchiabi/ui/app_route_util.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppPage extends StatelessWidget {
  AppPage({Key? key, required this.child, required this.pageIndex})
      : super(key: key);
  Widget child;
  int pageIndex;

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
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (int num) {
          Navigator.pushAndRemoveUntil(
              context, getPageRouteWithBottomNavIndex(num), (route) => false);
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
