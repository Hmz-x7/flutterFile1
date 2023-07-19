// ignore_for_file: prefer_const_constructors, unused_import, prefer_typing_uninitialized_variables, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math' show cos, sqrt, asin;

import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class NNalgorimControll extends GetxController {
  calculateDistance(lat1, lon1, lat2, lon2);
}

class NNalgorimIm {
  final LatLng storeLocation = LatLng(40.7128, -74.0060);
  double calculateDistance(lat1, lon1, lat2, lon2) {
    const p = 0.017453292519943295;
    var a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a)); // 2 * R; R = 6371 km
  }

/*_________________________________________________________________________*/
  getNearestDeliveryPerson(storeLocation) async {
    final storesRef = FirebaseFirestore.instance.collection('stores');
    final storesData = await storesRef.get();

// Loop through all stores to find the nearest one
    double minDistance = double.infinity;
    var storeId;
    var storeData;
    storesData.docs.forEach((doc) {
      final store = doc.data();
      final distance = calculateDistance(storeLocation.latitude,
          storeLocation.longitude, store['latitude'], store['longitude']);

      if (distance < minDistance) {
        minDistance = distance;

        storeId = doc.id;

        storeData = store;
      }
    });

// Get all delivery persons

    final deliveryPersonsRef =
        FirebaseFirestore.instance.collection('deliveryPersons');

    final deliveryPersonsData = await deliveryPersonsRef.get();

// Find the nearest idle delivery person

    minDistance = double.infinity;

    var deliveryPersonId;

    deliveryPersonsData.docs.forEach((doc) {
      final deliveryPerson = doc.data();
      //

      if (deliveryPerson['status'] == 'idle') {
        final distance = calculateDistance(
            storeData['latitude'],
            storeData['longitude'],
            deliveryPerson['latitude'],
            deliveryPerson['longitude']);

        if (distance < minDistance) {
          minDistance = distance;

          deliveryPersonId = doc.id;
          print("-------------------------");
          print(deliveryPersonId);
        }
      }
    });

    // If found an idle delivery person, assign the order to them

    // ignore: unnecessary_null_comparison
    if (deliveryPersonId != null) {
      final orderData = {
        'storeId': storeId,

        'deliveryPersonId': deliveryPersonId,

        'status': 'assigned',

        'createdAt': FieldValue.serverTimestamp(),

// Add any additional order data here
      };

      await FirebaseFirestore.instance.collection('orders').add(orderData);
    }
  }

  /*_____________________________________________________________________________*/
}
