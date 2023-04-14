import 'package:get/get.dart';
import 'package:rocketsapp/view/rocketdetail/rocket_detail.dart';

import '../../models/rockets_model.dart';

class RocketDetailController extends GetxController {
  // final _api = RocketDetailPage();
  List<RocketsModel> result = [];
  // List result = <RocketsModel>[].obs;

  var isDataLoading = true.obs;
  final rocketdetailid = ''.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // onActiveVisitors();
    // getRocket();
  }

  // void getRocket() {
  //   isDataLoading(true);
  //   _api.getRocket().then((value) {
  //     isDataLoading(false);
  //     result = rocketsModelFromJson(value);
  //     result[].
  //   }).onError((error, stackTrace) {
  //     isDataLoading(false);
  //     Get.snackbar("Error", error.toString());
  //   });
  // }

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
