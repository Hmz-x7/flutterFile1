import 'dart:io';

checkInternet() async {
  try {
    // ignore: unused_local_variable
    var result = await InternetAddress.lookup("goole.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
//on SocketException  مافي اتصال بالنت تاخطاء المتوقع 
