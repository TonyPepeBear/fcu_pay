import 'package:fengchiabi/data/service_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServiceNewFragment extends StatefulWidget {
  const ServiceNewFragment({Key? key}) : super(key: key);

  @override
  State<ServiceNewFragment> createState() => _ServiceNewFragmentState();
}

class _ServiceNewFragmentState extends State<ServiceNewFragment> {
  String _inputTitle = "";
  String _inputContent = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "刊登問題",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Expanded(child: Container())
          ],
        ),
        const Divider(thickness: 4),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                "問題標題：",
                style: TextStyle(fontSize: 24),
              ),
              Expanded(
                child: TextField(
                  onChanged: (text) {
                    _inputTitle = text;
                  },
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  "問題內容：",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            onChanged: (text) {
              _inputContent = text;
            },
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    if (_inputTitle.isEmpty || _inputContent.isEmpty) return;
                    context
                        .read<ServiceModel>()
                        .newService(_inputTitle, _inputTitle);
                    Navigator.of(context).pop();
                  },
                  child: const Text("送出")),
            ],
          ),
        ),
      ],
    );
  }
}
