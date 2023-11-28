import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İnstagrammss',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      "assets/images/ig.png",
                      height: 35,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Icon(Icons.send, color: Colors.black87, size: 20),
                      ),
                    ],
                  )
                ]),
          ),
          Expanded(
              child: Container(
                  child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StoryWidget("bilal Karabulut", "assets/images/me1.png"),
                        StoryWidget2("yns", "assets/images/me-2.png"),
                        StoryWidget3(),
                        StoryWidget2("yns", "assets/images/me-2.png"),
                        StoryWidget3(),
                        StoryWidget2("yns", "assets/images/me-2.png"),
                        StoryWidget3(),
                        StoryWidget2("yns", "assets/images/me-2.png"),
                      ],
                    ),
                  ),
                  PostItem("assets/images/me1.png", "assets/images/bk.jpeg",
                      "bizzattaha", "FSM Köprüsü"),
                  PostItem("assets/images/me-2.png", "assets/images/me1.png",
                      "emrehalil", "Gadaşım"),
                  PostItem("assets/images/me-2.png", "assets/images/me1.png",
                      "emrehalil", "Gadaşım"),
                ],
              ),
            ),
          ))),
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.search,
                    size: 32,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.smart_display,
                    size: 32,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    size: 32,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    size: 32,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Container PostItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(photo),
              LikeCommentBox(),
              CommentBox("bizzattaha", "Çok İyi olmuş değerli arkadaşım"),
              CommentBox("yns", "Gayet Başarılı bir Fotoğraf!"),
              CommentBox("emrehalil", "Konum alabilirmiyiz ?"),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.comment_bank_outlined,
                color: Colors.black87,
              ),
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.flag_circle_outlined,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String Comment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            name,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            Comment,
            maxLines: 5,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String name, String avatar) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 103, 1),
                  const Color.fromRGBO(241, 166, 117, 1),
                ])),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 40,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

  Widget StoryWidget2(String name, String avatar) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 103, 1),
                  const Color.fromRGBO(241, 166, 117, 1),
                ])),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 40,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }


Widget StoryWidget3() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("images/me-2.png"),
          radius: 40,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "yns",
          style: TextStyle(fontSize: 11),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
