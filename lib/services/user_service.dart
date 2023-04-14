import 'dart:convert';
import 'dart:core';
import '../constant/urls.dart';
import 'api_manager.dart';

class APIService {
  static final APIService _singleton = APIService._internal();

  factory APIService() {
    return _singleton;
  }

  APIService._internal();

  // // User Login function
  // static Future<APIResponse> login(String userName, String pwd) async {
  //   final APIResponse resp = await APIManager.postResponse(
  //       Url.loginEndpointsAPI,
  //       jsonEncode(<String, String>{
  //         'username': userName.trim(),
  //         'password': pwd.trim(),
  //       }));
  //   return resp;
  // }

  // // user logout function
  // static Future<APIResponse> logout() async {
  //   final APIResponse resp =
  //       await APIManager.postResponse(Url.logoutEndpointAPI, null);
  //   return resp;
  // }

  // check connection with backend function
  static Future getRockets() async {
    // final APIResponse resp = await APIManager.getResponse(Url.baseUrl, null);
    final resp = await APIManager().getResponse(Url.baseUrl, null);
    return resp;
  }

  // // get worksite name function
  // static Future<APIResponse> getRocketDetail() async {
  //   final APIResponse resp =
  //       await APIManager.getResponse(Url.getWorksiteNameAPI);
  //   return resp;
  // }

  // // get block number function
  // static Future<APIResponse> getBlocNumber() async {
  //   final APIResponse resp =
  //       await APIManager.getResponse(Url.getBlockNumberAPI);
  //   return resp;
  // }

  // // get Activate Visitors function
  // static Future<APIResponse> getActivateVisitors() async {
  //   final APIResponse resp =
  //       await APIManager.getResponse(Url.getActiveVisitorsAPI);
  //   return resp;
  // }

  // // get mobile slip format function
  // static Future<APIResponse> getMobileSlipPrintFormat() async {
  //   final APIResponse resp =
  //       await APIManager.getResponse(Url.getMobilePrintVisitorSlipAPI);
  //   return resp;
  // }

  // // get mobile slip format function
  // static Future<APIResponse> getLatestCar() async {
  //   final APIResponse resp = await APIManager.getResponse(Url.getLatestCar);
  //   return resp;
  // }

  // // get manual car input function
  // static Future<APIResponse> getManualCarInput(String carPlate) async {
  //   final APIResponse resp = await APIManager.multipartResponse(
  //       Url.manualInputNewCarAPI, <String, String>{
  //     'car_plate': carPlate,
  //   });
  //   return resp;
  // }

  // // sign out visitor function
  // static Future<APIResponse> checkoutVisitor(String id) async {
  //   final APIResponse resp = await APIManager.multipartResponse(
  //       Url.checkOutVisitor, <String, String>{
  //     'id': id,
  //   });
  //   return resp;
  // }

  // // forgot password function
  // static Future<APIResponse> passwordRest(String userName) async {
  //   final APIResponse resp =
  //       await APIManager.multipartResponse(Url.passwordReset, <String, String>{
  //     'Username': userName,
  //   });
  //   return resp;
  // }

  // // get fetch car function
  // static Future<APIResponse> fetchCar(String carPlate) async {
  //   final APIResponse resp =
  //       await APIManager.multipartResponse(Url.fetchCarAPI, <String, String>{
  //     'car_plate': carPlate,
  //   });
  //   return resp;
  // }

  // // get manual car input function
  // static Future<APIResponse> getSubmitCarDetailMobile() async {
  //   final APIResponse resp = await APIManager.multipartResponse(
  //       Url.submitCarDetailMobileAPI, <String, String>{
  //     'car_plate': 'YK9533R',
  //     'nric': 's12345678',
  //     'name': 'alex',
  //     'blk': 'Block1',
  //     'unit': '1234',
  //     'company': 'Flexitek',
  //     'mobile': '91238979',
  //     'entry_pass': 'c-1001',
  //     'purpose': '',
  //     'remarks': '',
  //     'time': '60',
  //     'record_id': ''
  //   });
  //   return resp;
  // }
}
