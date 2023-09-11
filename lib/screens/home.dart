import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.beach_access,
      Icons.headphones,
      Icons.access_alarm,
      Icons.face,
      Icons.add_box,
      Icons.ads_click,
      Icons.star,
      Icons.favorite,
      Icons.star,
      Icons.favorite,
      Icons.add_box,
      Icons.ads_click,
    ];

    final List<String> labels = [
      'Beach Access',
      'Headphones',
      'Access Alarm',
      'Face',
      'Add Box',
      'Ads Click',
      'Star',
      'Favorite',
      'Star',
      'Favorite',
      'Add Box',
      'Ads Click',
    ];

    return SizedBox(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Favourite",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.edit, color: Colors.blue),
                  Text("Edit",
                      style: TextStyle(fontSize: 20, color: Colors.blue)),
                ],
              )
            ],
          ),
          Center(
            child: Wrap(
              children: List.generate(icons.length, (index) {
                return Card(
                  color: Colors.grey.shade800.withOpacity(0.5),
                  child: SizedBox(
                    width: 90,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icons[index],
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const Center(
            child: Column(
              children: [
                Text("Show All",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
