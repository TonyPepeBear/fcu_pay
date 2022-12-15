import 'package:fengchiabi/ui/fragment/service_exchange/service_list_fragment.dart';
import 'package:flutter/material.dart';

import '../../page/app_page.dart';

class ServiceExchangeFragment extends StatelessWidget {
  const ServiceExchangeFragment({Key? key}) : super(key: key);

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
                  AppPage(pageIndex: 2, child: const ServiceListFragment()),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero);
          Navigator.of(context).push(route);
        },
        style: buttonStyle,
        child: const Text("問題列表"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("收藏問題"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("已解答問題"),
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
