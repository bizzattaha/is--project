import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'İstanbul Tanıtım',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Divider(),
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggested(),
                    ]),
                  ),
                ),
              ),
              BottomMenu()
            ],
          ),
        ));
  }

  Container Suggested() => Container(
        child: Column(
          children: [
            titleItem("Suggested", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            titleItem("Near You", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                  LocationItem("images/kopru.jpeg", "Boğaziçi Köprüsü",
                      "7km for you", "14TL"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget LocationItem(
          String photo, String title, String description, String fiyat) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(0, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                photo,
                width: 180,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      fiyat,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
              ],
            )
          ],
        ),
      );

  Container SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(0, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Caferağa, Kadıköy,",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              color: Colors.orange,
              size: 22,
            ),
          ],
        ),
      );

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleItem("Top Locations", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                  StoryItem("images/me1.png", "Bilal K."),
                  StoryItem("images/me-2.png", "Emre Halil"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 156, 101),
                Color.fromARGB(255, 219, 103, 75),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding titleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                TextStyle(color: Color.fromARGB(255, 56, 56, 56), fontSize: 16),
          ),
          Text(
            link,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153), fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      width: double.infinity,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, K1",
                  style: TextStyle(
                      color: Color.fromRGBO(153, 153, 153, 153), fontSize: 15),
                ),
                Text(
                  "Expolere Istanbul City",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Colors.orange,
                  size: 20,
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget BottomMenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color.fromARGB(255, 131, 131, 131),
        width: 1,
      )),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home, true),
          BottomMenuItem("Moments", Icons.groups, false),
          HighligtedItem("Book", Icons.maps_ugc),
          BottomMenuItem("Chat", Icons.forum, false),
          BottomMenuItem("Profile", Icons.person, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String name, IconData icon, active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Colors.black;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}

Widget HighligtedItem(String name, IconData icon) {
  var renk = Color.fromRGBO(236, 125, 87, 1);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          size: 35,
          color: renk,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 10),
        )
      ],
    ),
  );
}
