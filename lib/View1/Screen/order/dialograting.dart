import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:rating_dialog/rating_dialog.dart';

final _dialog = RatingDialog(
  initialRating: 1.0,
  // your app's name?
  title: const Text(
    'Rating Dialog',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
  // encourage your user to leave a high rating?
  message: const Text(
    'Tap a star to set your rating. Add more description here if you want.',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 15),
  ),
  // your app's logo?
  image: Image.asset("images/lo1.PNG ", width: 100, height: 100),
  submitButtonText: 'Submit',
  submitButtonTextStyle:
      const TextStyle(color: Appcolor.lightmoov3, fontWeight: FontWeight.bold),
  commentHint: 'Set your custom comment hint',
  onCancelled: () => print('cancelled'),
  onSubmitted: (response) {
    print('rating: ${response.rating}, comment: ${response.comment}');
  },
);

void showdilogerating(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => _dialog,
  );
}
