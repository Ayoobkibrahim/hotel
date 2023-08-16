import 'package:flutter/material.dart';

class HotelGrid extends StatelessWidget {
  final List title;
  final List imageUrl;
  const HotelGrid({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: title.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            height: 210,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 110,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageUrl[index])),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[index],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "A Five Star Hotel in Kochi",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const Row(
                          children: [
                            Text(
                              "\$180/night",
                              style:
                              TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Spacer(),
                            Text(
                              "4.5",
                              style:
                              TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 12,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}