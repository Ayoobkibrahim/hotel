import 'package:flutter/material.dart';

class HotelList extends StatelessWidget {
  final String title;
  final String imageUrl;
  const HotelList({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Card(
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(imageUrl)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "A Five Star Hotel in Kochi",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const Text(
                      "\$180/night",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.car_rental,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.bedroom_baby,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.wine_bar,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.wifi,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 5,
            top: 40,
            bottom: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: const Text("Book"),
            ),
          )
        ],
      ),
    );
  }
}