import 'package:flutter/material.dart';
import 'package:hotel/Hotel/Hotel%20Grid.dart';
import 'package:hotel/Hotel/Hotel%20List.dart';
import 'Title.dart';

void main(){
  runApp(MaterialApp(home: Hotelhome(),debugShowCheckedModeBanner: false,));
}

class Hotelhome extends StatelessWidget {
  const Hotelhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              "Hello @ Ayoob",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            subtitle: const Text(
              "Find your Favorite Hotel",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1549294413-26f195200c16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFy"
                              "Y2h8OHx8SG90ZWwlMjBHcmFuZCUyMGhheWF0dHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(20),
            width: double.infinity,
            height: 50,
            color: const Color.fromARGB(153, 255, 255, 255),
            child:const Card(
              elevation: 20,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Serach For Hotel",
                    filled: true,
                    fillColor: Colors.white60,
                    enabled: true,
                    border: InputBorder.none

                )
                ,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Hotel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          HotelGrid(title: hotelTitle,imageUrl: imageUrl,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hotel Packages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                )
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: hotelTitle.length,
            itemBuilder: (context, index) => HotelList(title: hotelTitle[index],imageUrl: imageUrl[index],),
          )
        ],
      ),
    );
  }
}