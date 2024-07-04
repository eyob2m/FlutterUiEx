import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  PageController _pc = PageController(initialPage: 0);
  int pgn = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pc,
          children: [
            Page(
              1,
              "assets/images/photo_1_2024-07-03_02-13-15.jpg",
                "Ethiopia",
                'Even if it is not your approach for learning, please take a look at echobot.py. It is the de facto base for most of the bots out there. The code for these examples is released to the public domain, so you can start by grabbing the code and building on top of it.',
                4,
                378),
            Page(2,
            "assets/images/photo_2_2024-07-03_02-13-15.jpg",
                "Ghana",
                'Even if it is not your approach for learning, please take a look at echobot.py. It is the de facto base for most of the bots out there. The code for these examples is released to the public domain, so you can start by grabbing the code and building on top of it.',
                3,
                78),
            Page(3,
            "assets/images/photo_3_2024-07-03_02-13-15.jpg",
                "Kenya",
                'Even if it is not your approach for learning, please take a look at echobot.py. It is the de facto base for most of the bots out there. The code for these examples is released to the public domain, so you can start by grabbing the code and building on top of it.',
                4.5,
                1020),
            Page(4,
            "assets/images/photo_4_2024-07-03_02-13-15.jpg",
                "Brundi",

                'Even if it is not your approach for learning, please take a look at echobot.py. It is the de facto base for most of the bots out there. The code for these examples is released to the public domain, so you can start by grabbing the code and building on top of it.',
                4.3,
                789)
          ],
        ),
      ),
    );
  }

  Widget Page(int page,String image,String title, String desc, double rating, int pop) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage(image),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [.4, .8, 1],
                begin: Alignment.bottomRight,
                colors: [Colors.black87, Colors.black54, Colors.black26])),
        child: Padding(
          padding: EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  page.toString(),
                  style: TextStyle(color: Colors.white70, fontSize: 30),
                ),
                Text(
                  "/$pgn",
                  style: TextStyle(color: Colors.white60, fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 7),
                        child: Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text("($pop)",
                          style: TextStyle(color: Colors.white.withOpacity(.4)))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      desc,
                      style: TextStyle(
                          height: 1.4, color: Colors.white.withOpacity(.6)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white12, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
