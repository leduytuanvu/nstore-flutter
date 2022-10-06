import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final String image;
  const Page3({Key? key, required this.image}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const ImageIcon(
          AssetImage("assets/images/Hamburger-menu.png"),
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Headphones',
          style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          ImageIcon(
            AssetImage("assets/images/Search.png"),
            color: Colors.black,
          ),
          SizedBox(width: 14)
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              children: [
                // Positioned(
                //   top: 7,
                //   left: 16,
                //   child: Image.asset(
                //     widget.image,
                //     fit: BoxFit.cover,
                //     height: 210,
                //     width: 210,
                //   ),
                // ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      widget.image,
                      height: 190,
                      width: 160,
                      fit: BoxFit.fill,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  top: 30,
                  right: 12,
                  child: SizedBox(
                    width: 195,
                    child: Text(
                      'Boat Rockerz 350 On-Ear Bluetooth Headphones',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Positioned(
                  top: 85,
                  right: 0,
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                          ),
                          minimumSize: const Size(140, 40), //////// HERE
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white.withOpacity(0.88),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (_) => SizedBox(
                              height: MediaQuery.of(context).size.height / 2.1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 170,
                                      left: 170,
                                      top: 8,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey[350],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 16),
                                    alignment: Alignment.centerRight,
                                    child: const ImageIcon(
                                      AssetImage("assets/images/box.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    // color: Colors.red,
                                    height: MediaQuery.of(context).size.height *
                                        0.33,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                // color: Colors.red,
                                                height: 150,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 30,
                                                      top: 50,
                                                      child: Image.asset(
                                                        'assets/images/bottom_yellow.png',
                                                        height: 100,
                                                        width: 130,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 45,
                                                      top: 20,
                                                      child: Image.asset(
                                                        'assets/images/headphone_4.png',
                                                        height: 90,
                                                        width: 90,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 131,
                                                      top: 115,
                                                      child: Image.asset(
                                                        'assets/images/red_clear.png',
                                                        height: 16,
                                                        width: 16,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 32),
                                                child: Text(
                                                  'Boat Rockerz 400 On-Ear Bluetooth Headphones',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                              const SizedBox(height: 14),
                                              const Text(
                                                '\$58.24',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontFamily: 'Montserrat',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.grey.shade300,
                                          thickness: 0.8,
                                          endIndent: 38,
                                          indent: 28,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                // color: Colors.red,
                                                height: 150,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 30,
                                                      top: 50,
                                                      child: Image.asset(
                                                        'assets/images/bottom_yellow.png',
                                                        height: 100,
                                                        width: 130,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 45,
                                                      top: 20,
                                                      child: Image.asset(
                                                        'assets/images/headphones.png',
                                                        height: 90,
                                                        width: 90,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 131,
                                                      top: 115,
                                                      child: Image.asset(
                                                        'assets/images/red_clear.png',
                                                        height: 16,
                                                        width: 16,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 32),
                                                child: Text(
                                                  'Boat Rockerz 350 On-Ear Bluetooth Headphones',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                              const SizedBox(height: 14),
                                              const Text(
                                                '\$78.24',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontFamily: 'Montserrat',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width,
                                            60), //////// HERE
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Confirm',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                          ),
                          minimumSize: const Size(140, 40), //////// HERE
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13,
                color: Colors.white70,
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
                height: 1.8,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Color',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                color: Colors.white70,
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
                height: 1.8,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
