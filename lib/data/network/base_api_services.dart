abstract class BaseApiServices {
  Future<dynamic> getApi({Map<String, String>? data, required String url});
  Future<dynamic> postApi(dynamic data, String url);
}
