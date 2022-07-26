import 'package:fengchiabi/ui/page/login_page.dart';
import 'package:flutter/material.dart';

class SettingFragment extends StatelessWidget {
  const SettingFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const buttonStyle = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.grey),
      padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
    );

    List<Widget> widgets = [
      ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        style: buttonStyle,
        child: const Text("登入"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("常用問答"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("問題回報"),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Text("使用者名稱"),
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
