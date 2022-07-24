import 'package:fengchiabi/ui/page/login_page.dart';
import 'package:flutter/material.dart';

class SettingFragment extends StatelessWidget {
  const SettingFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text("Login")),
        ],
      ),
    );
  }
}
