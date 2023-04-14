class Url {
  //Apis
  // Base Url
  static const baseUrl = "https://api.spacexdata.com/v4/rockets";
  static const rocketdetailUrl = "https://api.spacexdata.com/v4/rockets/:id";
  // Login Endpoint API
  static const String loginEndpointsAPI = "/api/login/";

  //Logout Endpoint API
  static const String logoutEndpointAPI = "/api/logout/";

  // CheckConnection API
  static const String checkConnectionAPI = "/api/v2/check_connection/";

  // Get Worksite Name API
  static const String getWorksiteNameAPI = "/api/v2/get_name/";

  // Get Block Number API
  static const String getBlockNumberAPI = "/api/v2/get_blk/";

  // Manual Input New Car In
  static const String manualInputNewCarAPI = "/api/v2/new_car/";

  // Fetch Car
  static const String fetchCarAPI = "/api/v2/fetchcar/";

  // Submit Car Detail (Mobile)
  static const String submitCarDetailMobileAPI =
      "/api/v2/submit_new_car_mobile/";

  // Submit Car Detail (NRIC)
  static const String submitCarDetailNRICAPI = "/api/v2/submit_new_car_nric/";

  //Get Active Visitors
  static const String getActiveVisitorsAPI = "/api/v2/active_visitor/";

  //Get Latest car
  static const String getLatestCar = "/api/v2/get_latest_car/";

  //Get checkout visitor
  static const String checkOutVisitor = "/api/v2/checkout_visitor/";

  //Get checkout visitor
  static const String passwordReset = "/api/v2/password_reset/";

  //Get Mobile Print Visitor Slip Format
  static const String getMobilePrintVisitorSlipAPI =
      "/api/v2/mobileprintformat/";
}
