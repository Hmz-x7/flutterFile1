import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class CustomCartList extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemCount;

  const CustomCartList(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      color: Appcolor.lightmoov2,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: Row(
              children: [
                /////row////////////////////////
                const Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/b.jpg"),
                    radius: 40,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ListTile(
                    title: Text(itemName),
                    subtitle: Text(
                      itemPrice,
                      style: const TextStyle(
                          color: Appcolor.lightmoov3, fontSize: 15),
                    ),
                  ), //////////price///////////
                ),
                Expanded(
                    child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.add, color: Appcolor.lightmoov3)),
                    // ignore: prefer_const_constructors
                    Text(itemCount, style: TextStyle(fontSize: 12)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove,
                            color: Appcolor.lightmoov3))
                  ],
                ))
              ],
            )),
          ),
        ],
      ),
    );
    /////;
  }
}
