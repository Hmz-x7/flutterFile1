import 'package:flutter/material.dart';

import '../Constant/imageasset.dart';
import 'StatuesRequest.dart';
import 'package:lottie/lottie.dart';

// ignore: use_key_in_widget_constructors
class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading,
                width: 200, height: 200))
        : statusRequest == StatusRequest.offLinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 200, height: 200))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 200, height: 200))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.noData,
                            width: 200, height: 200),
                      )
                    : widget;
  }
}
