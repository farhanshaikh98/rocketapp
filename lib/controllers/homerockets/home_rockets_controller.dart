import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../models/rocket_detail_model.dart';
import '../../models/rockets_model.dart';
import '../../repository/home_repository/home_repository.dart';
import '../../repository/rocket_detail_repository/rocket_detail_repository.dart';
import '../../services/user_service.dart';
import '../../view/rocketdetail/rocket_detail.dart';

class HomeRocketController extends GetxController {
  final _api = HomeRepository();
  final _api1 = RocketDetailRepository();
  List<RocketsModel> result = [];
  RocketDetailModel? detailresult;
  // List result = <RocketsModel>[].obs;

  var isDataLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // onActiveVisitors();
    getRocket();
  }

  void getRocket() {
    isDataLoading(true);
    _api.getRocket().then((value) {
      isDataLoading(false);
      result = rocketsModelFromJson(value);
      debugPrint(result[0].id);
    }).onError((error, stackTrace) {
      isDataLoading(false);
      Get.snackbar("Error", error.toString());
    });
  }

  void getRocketDetail(String id) {
    isDataLoading(true);
    _api1.getRocketDetail(id).then((value) {
      isDataLoading(false);
      detailresult = rocketDetailModelFromJson(value);
      // Get.to(RocketDetailPage(), arguments: detailresult);
    }).onError((error, stackTrace) {
      isDataLoading(false);
      debugPrint("-------f----------${error.toString()}");
      Get.snackbar("Error", error.toString());
    });
  }
  // onActiveVisitors() async {
  //   isDataLoading(true);
  //   final respons = await APIService.getRockets();
  //   // debugPrint("-----------");
  //   // debugPrint("${respons}");
  //   // debugPrint("----------");
  //   isDataLoading(false);

  //   result = rocketsModelFromJson(respons);
  //   debugPrint("-----------");
  //   debugPrint("${result[0].active}");
  //   debugPrint("----------");
  //   // dataresult!
  // }
}
