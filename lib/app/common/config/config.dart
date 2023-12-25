class Endpoints {
  


  static const String baseUrl = 'https://a9ac-2402-3a80-1f85-c467-4c25-25f6-6669-1974.ngrok-free.app';  
  // static const String baseUrl = "http://10.0.2.2:4000/api/v1";  
  // static const String baseUrl = "http://127.0.0.1:4000/api/v1";  
  
  
  // static const int receiveTimeout = 15000;

  // static const int connectionTimeout = 15000;

  // __________________AUTH___________________________________

  static const String loginemailUser = "/auth/email/login/";
  static const String sigupemail = "/auth/email/signup";
  static const String forgotpassemail = "/auth/password/forgotpass"; 
  static const String verifyemailotp = "/auth/email/otp/verify";
  static const String verifyphoneotp = "/auth/phone/otp/verify";   
  static const String verifygoogleidToken = "/auth/google/idtoken/verify";   
  static const String verifyphoneotpidtoken = "/auth/phoneotp/verify"; 
  static const String submitphoneafterOtp = "/auth/phoneotp/submit";
  static const String verifyforgotpassOtp = "/auth/password/forgotpass/otp/verify";
  static const String verifyforgotpassReset = "/auth/password/forgotpass/reset";
  // __________________POST___________________________________

  static const String createpost = "/post/create";
  static const String postfeed = '/post/feed';
  static const String postown = '/post/own';
  static const String likepost = '/post/like';
  static const String likelistpost = '/post/list/like';
  static const String getOnePost = "/post/get";
  static const String postlikeown = '/post/like/own';
  //for list in custom search delegate
  static const String getSearchStringPost = "/post/search";

  //__________________NOTIFICATION____________________________

  static const String notification = "/auth/notification";
  static const String setfcm = "/notification/fcmset";


  ///__________________PROFILE________________________________
  
  static const editprofile = "/profile/edit";
  static const anotherprofile = "/profile/view/";
  static const anotherpostprofile = "/profile/post/view/";

   // __________________User___________________________________

  static const String friendreqUser = "/user/req";
  static const String createfollow = "/user/follow";
  static const String createSavedPost = "/user/postsave";
  static const String getAllSavedPost = "/user/postsave/all";
  

  // __________________User___________________________________

  static const String createcomment = "/comment/create";
  static const String getmaincomment = "/comment/main";
  static const String getfivemaincomment = "/comment/main/five";
  static const String getrootcomment = "/comment/root";
  static const String getchildcomment = "/comment/child";
  static const String getusercomment = "/comment/user";

   // __________________Notification___________________________________

  static const String getNotificationAll = "/notification/all";
}
