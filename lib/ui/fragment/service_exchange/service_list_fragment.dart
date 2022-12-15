import 'package:fengchiabi/data/service_model.dart';
import 'package:fengchiabi/ui/fragment/service_exchange/service_new_fragment.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../page/app_page.dart';

class ServiceListFragment extends StatelessWidget {
  const ServiceListFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var serviceList = context.watch<ServiceModel>().services;

    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "問題列表",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                var route = PageRouteBuilder(
                    pageBuilder: (context, a1, a2) => AppPage(
                        pageIndex: 2, child: const ServiceNewFragment()),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero);
                Navigator.of(context).push(route);
              },
              icon: const Icon(
                MdiIcons.fileEditOutline,
                color: Colors.black,
              ),
            )
          ],
        ),
        const Divider(thickness: 4),
        Expanded(
          child: Builder(builder: (context) {
            if (serviceList.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "尚無問題",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              );
            }
            return ListView.separated(
              itemCount: serviceList.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    serviceList[i].title,
                    style: const TextStyle(fontSize: 18),
                  ),
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            );
          }),
        ),
      ],
    );
  }
}
