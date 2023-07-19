// ignore_for_file: file_names

import '../Class1/StatuesRequest.dart';

handleingDtat(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
