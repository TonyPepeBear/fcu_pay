import 'package:flutter/material.dart';

class MissionFragment extends StatelessWidget {
  const MissionFragment({Key? key}) : super(key: key);

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
        child: const Text("每日任務"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("主線任務"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("支線任務"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("特殊任務"),
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
