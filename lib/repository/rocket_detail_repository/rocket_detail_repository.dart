import '../../constant/urls.dart';
import '../../data/network/network_api_services.dart';

class RocketDetailRepository {
  final _apiservices = NetworkApiServices();

  Future<dynamic> getRocketDetail(String id) async {
    dynamic response = _apiservices.getApi(
      data: {"id": id},
      url: Url.rocketdetailUrl,
    );
    return response;
  }
}
