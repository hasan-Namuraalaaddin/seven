import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  int? isSelected;

  final List<Widget> _screens = const [
    MyHome(),
    MyCompare(),
    MyFav(),
    MyPerson(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _screens[isSelected!],
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(4.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 222, 144, 18),
          child: Stack(
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              Positioned(
                top: 20,
                right: 2,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 5,
                    minWidth: 5,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isSelected = 0;
                });
              },
              splashRadius: 20,
              icon: Icon(
                Icons.home,
                color: isSelected == 0
                    ? const Color.fromARGB(255, 228, 149, 31)
                    : Colors.grey,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 21,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isSelected = 1;
                });
              },
              splashRadius: 20,
              icon: Icon(
                Icons.compare_arrows,
                color: isSelected == 1
                    ? const Color.fromARGB(255, 226, 151, 38)
                    : Colors.grey,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 125,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isSelected = 2;
                });
              },
              splashRadius: 20,
              icon: Icon(
                Icons.favorite,
                color: isSelected == 2
                    ? const Color.fromARGB(255, 226, 151, 38)
                    : Colors.grey,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 21,
            ),
            IconButton(
              splashRadius: 20,
              onPressed: () {
                setState(() {
                  isSelected = 3;
                });
              },
              icon: Icon(
                Icons.person,
                color: isSelected == 3
                    ? const Color.fromARGB(255, 226, 151, 38)
                    : Colors.grey,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFav extends StatefulWidget {
  const MyFav({super.key});

  @override
  State<MyFav> createState() => _MyFavState();
}

class _MyFavState extends State<MyFav> {
  List<bool> selectIcon = [true, false, false];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectIcon[1];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 55.0),
            child: Text(
              'WishList Screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.all(4),
            visualDensity: const VisualDensity(vertical: 3),
            onTap: () {
              setState(() {
                selectIcon[0] = !selectIcon[0];
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            leading: AspectRatio(
              aspectRatio: 30 / 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage(
                    'assets/images/2.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: const Text(
              'Car',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Classic',
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 133, 30),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$340.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$320.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing: CupertinoButton(
              onPressed: () {
                setState(() {
                  selectIcon[0] = !selectIcon[0];
                });
              },
              child: Icon(
                selectIcon[0] ? Icons.check_circle : Icons.circle_outlined,
                size: 30,
                color: const Color.fromARGB(255, 199, 128, 22),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: ListTile(
            contentPadding: const EdgeInsets.all(4),
            visualDensity: const VisualDensity(vertical: 3),
            onTap: () {
              setState(() {
                selectIcon[1] = !selectIcon[1];
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            leading: AspectRatio(
              aspectRatio: 30 / 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage(
                    'assets/images/1.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: const Text(
              'Share',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Classic',
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 133, 30),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$220.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$320.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing: CupertinoButton(
              onPressed: () {
                setState(() {
                  selectIcon[1] = !selectIcon[1];
                });
              },
              child: Icon(
                selectIcon[1] ? Icons.check_circle : Icons.circle_outlined,
                size: 30,
                color: const Color.fromARGB(255, 199, 128, 22),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.all(4),
            visualDensity: const VisualDensity(vertical: 3),
            onTap: () {
              setState(() {
                selectIcon[2] = !selectIcon[2];
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            leading: AspectRatio(
              aspectRatio: 30 / 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage(
                    'assets/images/3.jpeg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: const Text(
              'T-shirt',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Classic',
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 133, 30),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$340.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$550.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing: CupertinoButton(
              onPressed: () {
                setState(() {
                  selectIcon[2] = !selectIcon[2];
                });
              },
              child: Icon(
                selectIcon[2] ? Icons.check_circle : Icons.circle_outlined,
                size: 30,
                color: const Color.fromARGB(255, 199, 128, 22),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCompare extends StatelessWidget {
  const MyCompare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class MyPerson extends StatelessWidget {
  const MyPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
