import 'package:flutter/material.dart';

class ServiceModel extends ChangeNotifier {
  List<ServiceItem> services = [];

  void newService(String title, String content) {
    services.add(ServiceItem(title, content));
    notifyListeners();
  }
}

class ServiceItem {
  String title;
  String content;

  ServiceItem(this.title, this.content);
}
