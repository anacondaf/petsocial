import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';
import 'constants.dart';

const CAT_ITEM_CONTENT =
    "I Took Beautiful Photos Today. What Do You Think Of My Cute Smile....";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(primary: primary),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Color(0xFFa3b986),
          ),
        ),
        primarySwatch: primary,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavSelectedIndex = 0;

  void bottomNavOnTap(index) {
    setState(() {
      _bottomNavSelectedIndex = index;
    });
  }

  final List<String> petItemImages = [
    'assets/dog3.jpg',
    'assets/dog2.jpg',
    'assets/pitbulls/bull2.jpg'
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < petItemImages.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _prev() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context)
          .copyWith(primaryColor: kSecondaryColor)
          .primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Find Your",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Favourite Pet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "What pet are you looking for",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        // Pet Item
                        petCard('assets/husky1.jpg', "Husky"),
                        const SizedBox(
                          width: 30,
                        ),
                        petCard('assets/dog2.jpg', "Alaska"),
                        const SizedBox(
                          width: 30,
                        ),
                        petCard('assets/dog3.jpg', "PitBull"),
                        const SizedBox(
                          width: 30,
                        ),
                        petCard('assets/white-poodle.jpg', "Doodle"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF242424),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image:
                                                AssetImage('assets/dog2.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        height: 60.0,
                                        width: 60.0,
                                      ),
                                      const SizedBox(
                                        width: 16.0,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "TOKI",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          Text(
                                            "20m Lovers",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFa6a6a6),
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const Text(
                              CAT_ITEM_CONTENT,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            GestureDetector(
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.velocity.pixelsPerSecond.dx > 0) {
                                  _prev();
                                } else if (details.velocity.pixelsPerSecond.dx <
                                    0) {
                                  _next();
                                }
                              },
                              child: AspectRatio(
                                aspectRatio: 2 / 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        petItemImages[currentIndex],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 90,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                height: 4,
                                                margin: const EdgeInsets.only(
                                                  right: 5,
                                                ),
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 18.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(1.0),
                                      ),
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: Color(0xFFfc025f),
                                        size: 25.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        "200 K",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(1.0),
                                      ),
                                      icon: const Icon(
                                        Icons.comment,
                                        color: Color(0xFF8302e9),
                                        size: 25.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        "501 K",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(1.0),
                                      ),
                                      icon: const Icon(
                                        Icons.collections,
                                        color: Color(0xFFf6c50b),
                                        size: 25.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        "20 K",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavSelectedIndex,
        onTap: bottomNavOnTap,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(
              "assets/home.svg",
              height: 24,
            ),
            activeIcon: SvgPicture.asset(
              "assets/home-active.svg",
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: SvgPicture.asset(
              "assets/settings.svg",
              height: 24,
            ),
            activeIcon: SvgPicture.asset(
              "assets/settings-active.svg",
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}

Widget petCard(image, petName) {
  return AspectRatio(
    aspectRatio: 2 / 3,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.2, 0.9],
            colors: <Color>[
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              petName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
