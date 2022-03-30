import 'dart:developer';

import 'package:all_state_management/getx_statemanement/controller/counter_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxPage extends StatelessWidget {
  GetxPage({Key? key}) : super(key: key);

  final counter = Get.put(GextCouter());
  @override
  Widget build(BuildContext context) {
    final GextCouter findCounter = Get.find();
    return Scaffold(
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                log(findCounter.getInt.toString());
                counter.getInt++;
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 4),
            FloatingActionButton(
              onPressed: () {
                counter.getInt--;
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        body: Center(
          child: Obx(() => Text('${findCounter.getInt}')),
        ));
  }
}
