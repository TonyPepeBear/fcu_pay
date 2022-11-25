import 'package:fengchiabi/ui/fragment/mission_fragment.dart';
import 'package:flutter/material.dart';

class InfoFragment extends StatefulWidget {
  const InfoFragment({Key? key}) : super(key: key);

  @override
  State<InfoFragment> createState() => _InfoFragmentState();
}

class _InfoFragmentState extends State<InfoFragment> {
  int showingChile = SHOW_INFO;

  @override
  Widget build(BuildContext context) {
    const buttonStyle = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.grey),
      padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
    );

    List<Widget> widgets = [
      ElevatedButton(
        onPressed: () {
          setState(() {
            showingChile = SHOW_MISSION;
          });
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
        onPressed: () {},
        style: buttonStyle,
        child: const Text("服務交換"),
      ),
    ];

    if (showingChile == SHOW_MISSION) {
      return WillPopScope(
        child: const MissionFragment(),
        onWillPop: () async {
          setState(() {
            showingChile = SHOW_INFO;
          });
          return false;
        },
      );
    }

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

const int SHOW_INFO = 0;
const int SHOW_MISSION = 1;
