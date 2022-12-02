import 'package:fengchiabi/ui/fragment/mission_fragment.dart';
import 'package:fengchiabi/ui/fragment/service_exchange/service_exchange_fragment.dart';
import 'package:flutter/material.dart';

import '../page/app_page.dart';

class InfoFragment extends StatelessWidget {
  const InfoFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const buttonStyle = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.grey),
      padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
    );

    List<Widget> widgets = [
      ElevatedButton(
        onPressed: () {
          var route = PageRouteBuilder(
              pageBuilder: (context, a1, a2) =>
                  AppPage(pageIndex: 2, child: const MissionFragment()),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero);
          Navigator.of(context).push(route);
        },
        style: buttonStyle,
        child: const Text("任務"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("合作商家"),
      ),
      ElevatedButton(
        onPressed: () {
          var route = PageRouteBuilder(
              pageBuilder: (context, a1, a2) =>
                  AppPage(pageIndex: 2, child: const ServiceExchangeFragment()),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero);
          Navigator.of(context).push(route);
        },
        style: buttonStyle,
        child: const Text("服務交換"),
      ),
    ];

    return Center(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, i) => widgets[i],
        itemCount: widgets.length,
        separatorBuilder: (context, _) => const SizedBox(
          height: 40,
        ),
      ),
    );
  }
}
