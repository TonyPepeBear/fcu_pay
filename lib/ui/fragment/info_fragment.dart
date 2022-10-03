import 'package:fengchiabi/ui/page/login_page.dart';
import 'package:flutter/material.dart';

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
        onPressed: () {},
        style: buttonStyle,
        child: const Text("任務"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("商家兌換卷"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("合作商家"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("商家活動公告"),
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
