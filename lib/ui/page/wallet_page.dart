import 'package:fengchiabi/ui/app_route_util.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int pageIndex = 1;

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
        child: Text("Wallet"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (int num) {
          setState(() {
            Navigator.pushAndRemoveUntil(
                context, getPageRouteWithBottomNavIndex(num), (route) => false);
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
