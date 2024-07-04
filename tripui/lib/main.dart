import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                stops: [.4, .8, 1],
                begin: Alignment.bottomRight,
                colors: [Colors.black87, Colors.black54, Colors.black26])),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  TweenAnimationBuilder(
                        tween: Tween<double>(begin:-1, end: 0),
                        child: Text(
                  page.toString(),
                  style: const TextStyle(color: Colors.white70, fontSize: 30),
                ),
                        duration: const Duration(milliseconds: 300),
                        builder: (context, double value, child) {
                          return AnimatedOpacity(duration: Duration(milliseconds: 300),opacity: value+1, child: AnimatedSlide(duration: Duration(milliseconds: 300), offset: Offset(0, value),child: child!));
                        },
                      )
                 ,
                Text(
                  "/$pgn",
                  style: const TextStyle(color: Colors.white60, fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


            TweenAnimationBuilder(
                        tween: Tween<double>(begin:-1, end: 0),
                        child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                  ),
                        duration: const Duration(milliseconds: 300),
                        builder: (context, double value, child) {
                          return AnimatedOpacity(duration: Duration(milliseconds: 300),opacity: value+1, child: AnimatedSlide(duration: Duration(milliseconds: 300), offset: Offset(0, value),child: child!));
                        },
                      )
                 ,
                  const SizedBox(
                    height: 10,
                  ),
                   TweenAnimationBuilder(
                        tween: Tween<double>(begin:-1, end: 0),
                        child:  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: const Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        rating.toString(),
                        style: const TextStyle(color: Colors.white70),
                      ),
                      Text("($pop)",
                          style: TextStyle(color: Colors.white.withOpacity(.4)))
                    ],
                  ),
                        duration: const Duration(milliseconds: 300),
                        builder: (context, double value, child) {
                          return AnimatedOpacity(duration: Duration(milliseconds: 300),opacity: value+1, child: AnimatedSlide(duration: Duration(milliseconds: 300), offset: Offset(0, value),child: child!));
                        },
                      )
                 ,
                  const SizedBox(
                    height: 10,
                  ),
                  TweenAnimationBuilder(
                        tween: Tween<double>(begin:-1, end: 0),
                        child:   Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      desc,
                      style: TextStyle(
                          height: 1.4, color: Colors.white.withOpacity(.6)),
                    ),
                  ),
                        duration: const Duration(milliseconds: 300),
                        builder: (context, double value, child) {
                          return AnimatedOpacity(duration: Duration(milliseconds: 300),opacity: value+1, child: child!);
                        },
                      )
                 ,
                  const SizedBox(
                    height: 10,
                  ),
                   TweenAnimationBuilder(
                        tween: Tween<double>(begin:-1, end: 0),
                        child:   Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child:  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white12, width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(5))),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                      ),
                    ),
                  )
                  ),
                        duration: const Duration(milliseconds: 300),
                        builder: (context, double value, child) {
                          return AnimatedOpacity(duration: Duration(milliseconds: 300),opacity: value+1, child: child!);
                        },
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
