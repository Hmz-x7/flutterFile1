class AppLink {
  static const String server = 'http://10.0.2.2/angel_delevery/angle_delivery_php';
  // 'https://14ee-175-110-8-91.ngrok-free.app/angle_delivery';

  // static const String server =
  //   'https://03c0-175-110-9-184.ngrok-free.app/angle_delivery';

  static const String test = '$server/test.php';
// http://192.168.1.103/angle_delivery/account/signup.php
  // 'https://03c0-175-110-9-184.ngrok-free.app/angle_delivery/test.php';

  //------------------------account--------------------------------------//

  static const String signup = '$server/account/signup.php';
  static const String verifycode = '$server/account/verfiycode.php';
  static const String login = '$server/account/login.php';

  //------------------------forgetpassword-------------------------------//

  static const String checemail = '$server/forgetpassword/checemail.php';
  static const String verifycodepass =
      '$server/forgetpassword/verifycodepass.php';
  static const String resetpassword =
      '$server/forgetpassword/resetpassword.php';
  //------------------------home-----------------------------------------//
  static const String homepage = '$server/home.php';
  static const String product = '$server/homepage/product.php';
  //------------------------favorit-----------------------------------------//
  static const String favoriteadd = '$server/favorite/add.php';
  static const String favoriteremove = '$server/favorite/remove.php';
  static const String favoritview = '$server/favorite/rview.php';

  //------------------------cart-----------------------------------------//
  static const String cartadd = '$server/cart/add.php';
  static const String cartremove = '$server/cart/remove.php';
  static const String cartview = '$server/cart/rview.php';
  //------------------------search-----------------------------------------//
  static const String search = '$server/proudect/search.php';
}
