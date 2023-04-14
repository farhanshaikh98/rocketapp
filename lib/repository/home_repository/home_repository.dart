import 'package:rocketsapp/data/network/network_api_services.dart';

import '../../constant/urls.dart';

class HomeRepository {
  final _apiservices = NetworkApiServices();

  Future<dynamic> getRocket() async {
    dynamic response = _apiservices.getApi(url: Url.baseUrl);
    return response;
  }
}
