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
      title: 'Youtube Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color.fromRGBO(62, 36, 17, 1),
              const Color.fromRGBO(
                48,
                14,
                32,
                1,
              ),
            ])),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(width: 35, "images/logo.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Music",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 29,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.podcasts,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("images/me1.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryItem("Energize"),
                      CategoryItem("Workout"),
                      CategoryItem("Feel Good"),
                      CategoryItem("Relaxation"),
                      CategoryItem("Chill Out"),
                      CategoryItem("Rock"),
                      CategoryItem("Pop"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromARGB(255, 164, 164, 164),
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 164, 164, 164),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MusicRow("images/cover1.jpg", "Moments",
                            "PaulWetz & Dillistone"),
                        MusicRow("images/cover2.jpeg", "Avutsun bahaneler",
                            "Sagopa Kajmer"),
                        MusicRow(
                            "images/cover3.jpeg", "Siyah", "Sagopa Kajmer"),
                        MusicRow("images/cover4.jpeg", "Moments",
                            "PaulWetz & Dillistone"),
                        MusicRow(
                            "images/cover6.jpeg", "Tükeneceğiz", "Sezen Aksu"),
                        MusicRow("images/cover6.jpeg", "Kaybolan Yıllar",
                            "Sezen Aksu"),
                        MusicRow(
                            "images/cover7.jpeg", "Nilüfer", "Müslüm Gürses"),
                        MusicRow("images/cover7.jpeg", "İtirazım Var",
                            "Müslüm Gürses"),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgetton Favorites",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 164, 164, 164),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              musicBox("images/cover1.jpg", "Moments",
                                  "PaulWetz & Dillistone"),
                              musicBox("images/cover2.jpeg", "Avutsun bahaneler",
                                  "Sagopa Kajmer"),
                              musicBox(
                                  "images/cover3.jpeg", "Siyah", "Sagopa Kajmer"),
                              musicBox("images/cover4.jpeg", "Moments",
                                  "PaulWetz & Dillistone"),
                              musicBox(
                                  "images/cover6.jpeg", "Tükeneceğiz", "Sezen Aksu"),
                              musicBox("images/cover6.jpeg", "Kaybolan Yıllar",
                                  "Sezen Aksu"),
                              musicBox(
                                  "images/cover7.jpeg", "Nilüfer", "Müslüm Gürses"),
                              musicBox("images/cover7.jpeg", "İtirazım Var",
                                  "Müslüm Gürses"),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Color.fromRGBO(33, 33, 33, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                      Text(
                        "Samples",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                      Text(
                        "Expoler",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                      Text(
                        "Library",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.slideshow,
                        color: Colors.white,
                      ),
                      Text(
                        "Upgrade",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Padding musicBox(String photo, String title, String artist) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  photo,
                                  width: 150,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  artist,
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 168, 168, 168),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 168, 168, 168),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Container CategoryItem(String name) {
    return Container(
      padding:
          const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 12, right: 12),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
          color: const Color.fromARGB(39, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(75, 255, 255, 255))),
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      ),
    );
  }
}
