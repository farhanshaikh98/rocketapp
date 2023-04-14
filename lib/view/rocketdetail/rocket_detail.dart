import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketsapp/controllers/rocketdetail/rocket_detail_controller.dart';

import '../../models/rockets_model.dart';

class RocketDetailPage extends StatelessWidget {
  RocketDetailPage({super.key, required this.detail});
  final RocketsModel detail;
  RocketDetailController myhomerocketcontroller =
      Get.put(RocketDetailController());
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("${data[0]}")],
      ),
    );
  }
}
