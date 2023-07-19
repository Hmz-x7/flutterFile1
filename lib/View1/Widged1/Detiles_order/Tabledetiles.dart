import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class TableDetilesOrder extends StatelessWidget {
  const TableDetilesOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Table(
          //  border: TableBorder.all(color: Appcolor.lightmoov4, width: 1.5),
          children: const [
            TableRow(
              children: [
                Text("Item",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Appcolor.lightmoov3,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text("QTY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Appcolor.lightmoov3,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text("Price",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Appcolor.lightmoov3,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            TableRow(children: [
              Text(
                "cheacken..",
                textAlign: TextAlign.center,
              ),
              Text(
                "5",
                textAlign: TextAlign.center,
              ),
              Text(
                "1250",
                textAlign: TextAlign.center,
              ),
            ]),
            TableRow(children: [
              Text(
                "cheacken..",
                textAlign: TextAlign.center,
              ),
              Text(
                "5",
                textAlign: TextAlign.center,
              ),
              Text(
                "1250",
                textAlign: TextAlign.center,
              ),
            ]),
            TableRow(children: [
              Text(
                "cheacken..",
                textAlign: TextAlign.center,
              ),
              Text(
                "5",
                textAlign: TextAlign.center,
              ),
              Text(
                "1250",
                textAlign: TextAlign.center,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
