import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HotelHomePage(),
    debugShowCheckedModeBanner: false,));
}

class HotelHomePage extends StatefulWidget {
  const HotelHomePage({super.key});

  @override
  State<HotelHomePage> createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8f"
                            "EhvdGVsJTIwR3JhbmQlMjBoYXlhdHR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                ),
              ),
              const Positioned(
                bottom: 65,
                left: 20,
                child: Text(
                  "Grand Hayat \nKochi,Bolgatty",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: const Text(
                        "9.0/85 reviews",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      backgroundColor: Colors.grey.withOpacity(0.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: List.generate(
                            5,
                                (index) => const Icon(
                              Icons.star,
                              color: Colors.blue,
                            )),
                      ),
                      const Text(
                        "8 KM to lulu mall",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        "\$250",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        "/per night",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                  const MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                child: const Text(
                  "Book Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Grand Hayat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 260,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                      child: Text(
                        "A destination resort is a resort that itself contains the necessary guest attraction "
                            "capabilities so it does not need to be near a destination (town, historic site,"
                            " theme park, or other) to attract its patrons. A commercial establishment at a "
                            "resort destination such as a recreational area, a scenic or historic site, amusement park,"
                            " a gaming facility, or other tourist attraction may compete with other businesses at a destination."
                            " Consequently, another quality of a destination resort is that it offers food, drink, lodging, sports,"
                            " entertainment, and shopping within the facility so that guests have no need to leave the facility"
                            " throughout their stay. Commonly, the facilities are of higher quality than would be expected if one were"
                            " to stay at a hotel or eat in a town's restaurants. Some examples are Atlantis in the Bahamas; the Walt Disney"
                            " World Resort, near Orlando, Florida; Universal Studios Hollywood in San Fernando Valley, United States; PortAventura"
                            " World, near Barcelona on the Costa Daurada in Spain; Costa do Sauípe, Northeastern Brazil; Laguna Phuket, Thailand and Sun City,"
                            " near Johannesburg, South Africa. Closely related to resorts are convention and large meeting sites. Generally, they occur in cities,"
                            " where special meeting halls, together with ample accommodations and varied dining and entertainment, are provided.",
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar:BottomNavigationBar(
        onTap: (tapindex) {

          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: "favorits",),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "settings"),


        ],
        currentIndex: index,) ,

    );
  }
}