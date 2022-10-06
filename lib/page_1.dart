import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vuldt_task_ecomerce/page_2.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

final List<String> imgList = [
  'assets/images/headphone_2.png',
  'assets/images/headphones.png',
  'assets/images/headphone_3.png',
  'assets/images/headphone_9.png',
  'assets/images/headphone_10.png',
];

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  int mainIndex = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> getData(BuildContext context) {
    final List<Widget> imageSliderss = [];
    for (int i = 0; i < imgList.length; i++) {
      imageSliderss.add(
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    DetailProductScreen(image: imgList[i], price: 102.36),
              ),
            );
          },
          child: Container(
            // margin: const EdgeInsets.only(left: -10),
            width: 300,
            decoration: const BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 5,
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    width: 220,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2.0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                // Positioned(
                //   left: 7,
                //   child: AnimatedContainer(
                //     width: 190,
                //     height: 210,
                //     duration: const Duration(milliseconds: 500),
                //     curve: Curve.fastOutSlowIn,
                //     child: Image.asset(
                //       item,
                //       height: 210,
                //       width: 190,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   top: 60,
                //   left: 65,
                //   child: AnimatedContainer(
                //     duration: const Duration(milliseconds: 500),
                //     width: _current != i ? 120 : 190,
                //     height: _current != i ? 140 : 210,
                //     alignment: _current != i
                //         ? Alignment.bottomRight
                //         : Alignment.topLeft,
                //     child: Container(
                //       child: Image.asset(
                //         imgList[i],
                //         // height: 170,
                //         // width: 150,
                //         fit: BoxFit.fill,
                //       ),
                //     ),
                //   ),
                // ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  // width: _current != i ? 150 : 190,
                  // height: _current != i ? 170 : 210,
                  curve: Curves.fastOutSlowIn,
                  right: 0,
                  bottom: 90,
                  top: _current == i ? 0 : 20,
                  left: _current == i ? -40 : 0,
                  child: Container(
                    alignment: _current != i
                        ? AlignmentDirectional.bottomEnd
                        : Alignment.center,
                    child: Image.asset(
                      imgList[i],
                      // height: 170,
                      // width: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 46.0,
                  left: 54.0,
                  right: 10.0,
                  child: Text(
                    'Skullcandy headphone L325',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.6,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  bottom: 27.0,
                  right: 0.0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    width: 96,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '\$102.36',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 14.0,
                  right: 14.0,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    // final List<Widget> imageSliders = imgList
    //     .map(
    //       (item) => GestureDetector(
    //         onTap: () {
    //           Navigator.of(context).push(
    //             MaterialPageRoute(
    //               builder: (context) =>
    //                   DetailProductScreen(image: item, price: 102.36),
    //             ),
    //           );
    //         },
    //         child: Container(
    //           // margin: const EdgeInsets.only(left: -10),
    //           width: 300,
    //           decoration: const BoxDecoration(
    //             // color: Colors.red,
    //             borderRadius: BorderRadius.only(
    //               bottomRight: Radius.circular(30.0),
    //               topRight: Radius.circular(30.0),
    //             ),
    //           ),
    //           child: Stack(
    //             children: [
    //               Positioned(
    //                 bottom: 0.0,
    //                 top: 0.0,
    //                 right: 0.0,
    //                 child: Container(
    //                   width: 220,
    //                   decoration: const BoxDecoration(
    //                     color: Colors.amber,
    //                     borderRadius: BorderRadius.all(Radius.circular(30.0)),
    //                   ),
    //                 ),
    //               ),
    //               // Positioned(
    //               //   left: 7,
    //               //   child: AnimatedContainer(
    //               //     width: 190,
    //               //     height: 210,
    //               //     duration: const Duration(milliseconds: 500),
    //               //     curve: Curve.fastOutSlowIn,
    //               //     child: Image.asset(
    //               //       item,
    //               //       height: 210,
    //               //       width: 190,
    //               //       fit: BoxFit.fill,
    //               //     ),
    //               //   ),
    //               // ),
    //               Positioned(
    //                 top: 30,
    //                 left: 65,
    //                 child: AnimatedContainer(
    //                   alignment:
    //                       _current > 0 ? Alignment.center : Alignment.topLeft,
    //                   duration: const Duration(milliseconds: 500),
    //                   width: _current > 0 ? 150 : 190,
    //                   height: _current > 0 ? 170 : 210,
    //                   child: Image.asset(
    //                     item,
    //                     height: 170,
    //                     width: 150,
    //                     fit: BoxFit.fill,
    //                   ),
    //                 ),
    //               ),
    //               const Positioned(
    //                 bottom: 46.0,
    //                 left: 54.0,
    //                 right: 10.0,
    //                 child: Text(
    //                   'Skullcandy headphone L325',
    //                   style: TextStyle(
    //                     fontFamily: 'Montserrat',
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.white,
    //                     fontSize: 14,
    //                     height: 1.6,
    //                   ),
    //                   maxLines: 2,
    //                   overflow: TextOverflow.ellipsis,
    //                 ),
    //               ),
    //               Positioned(
    //                 bottom: 27.0,
    //                 right: 0.0,
    //                 child: Container(
    //                   alignment: Alignment.centerLeft,
    //                   height: 30,
    //                   width: 96,
    //                   decoration: const BoxDecoration(
    //                     color: Colors.red,
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(10.0),
    //                       bottomLeft: Radius.circular(10.0),
    //                     ),
    //                   ),
    //                   child: const Padding(
    //                     padding: EdgeInsets.only(left: 10),
    //                     child: Text(
    //                       '\$102.36',
    //                       style: TextStyle(
    //                         fontFamily: 'Montserrat',
    //                         fontSize: 15,
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const Positioned(
    //                 top: 14.0,
    //                 right: 14.0,
    //                 child: Icon(
    //                   Icons.favorite_border,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     )
    //     .toList();
    return imageSliderss;
  }

  int tmp = 0;
  List<String> items = [
    'Trending',
    'Sports',
    'Wriless',
    'Headset',
    'Earphone',
    'Bluetooth',
  ];

  Widget getWidget2(String title, String image, Color? color) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 10, bottom: 10),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              // spreadRadius: 1,
              blurRadius: 0.5,
              // offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getListWidget2(BuildContext context) {
    List<Widget> listWidget = [
      SizedBox(
        height: 110,
        // color: Colors.red,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            getWidget2(
                'Shoes & Bags', 'assets/images/bag_6.png', Colors.pink[50]),
            getWidget2('Watches', 'assets/images/bag_7.png', Colors.blue[50]),
            getWidget2(
                'Shoes & Bags', 'assets/images/bag_6.png', Colors.pink[50]),
            getWidget2(
                'Shoes & Bags', 'assets/images/bag_6.png', Colors.blue[50]),
            getWidget2(
                'Shoes & Bags', 'assets/images/bag_6.png', Colors.pink[50]),
            const SizedBox(width: 24),
          ],
        ),
      ),
    ];

    return listWidget;
  }

  // Tween<double> _scaleTween = Tween<double>(begin: 1, end: 5);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Container(
                    color: Colors.grey[50],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.amber[50],
                  ),
                ),
              ],
            ),
            // color: Colors.amber[50],
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14, right: 14),
                child: Container(
                  alignment: Alignment.topRight,
                  child: const ImageIcon(
                    AssetImage("assets/images/Search.png"),
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'Weekly Featured',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 4),
                        alignment: Alignment.center,
                        child: const Text(
                          'Best of June',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 4),
                        alignment: Alignment.center,
                        child: const Text(
                          'Best of 2018',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == entry.key
                                  ? Colors.amber
                                  : Colors.grey.shade300,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider(
                      items: getData(context),
                      carouselController: _controller,
                      options: CarouselOptions(
                        // enableInfiniteScroll: false,
                        padEnds: false,
                        enlargeCenterPage: true,
                        // disableCenter: true,
                        // pageSnapping: false,
                        aspectRatio: 1.09,
                        viewportFraction: 0.75,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 45,
                // color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            tmp = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: index == tmp
                                      ? Colors.black
                                      : Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                child: index == tmp
                                    ? const Divider(
                                        color: Colors.amber,
                                        thickness: 2,
                                      )
                                    : const Divider(
                                        color: Colors.transparent,
                                        thickness: 2,
                                      ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 4) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            tmp = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: index == tmp
                                      ? Colors.black
                                      : Colors.black45,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                child: index == tmp
                                    ? const Divider(
                                        color: Colors.amber,
                                        thickness: 2,
                                      )
                                    : const Divider(
                                        color: Colors.transparent,
                                        thickness: 2,
                                      ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          tmp = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              items[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: index == tmp
                                    ? Colors.black
                                    : Colors.black45,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              child: index == tmp
                                  ? const Divider(
                                      color: Colors.amber,
                                      thickness: 2,
                                    )
                                  : const Divider(
                                      color: Colors.transparent,
                                      thickness: 2,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              ...getListWidget2(context),
              // listWidget[tmp],
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 25,
                  child: Row(
                    children: const [
                      VerticalDivider(
                        width: 20,
                        thickness: 5,
                        endIndent: 0,
                        color: Colors.amber,
                      ),
                      Text(
                        'Recommended',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3),
              SizedBox(
                height: 700,
                child: GridView.count(
                  physics: const ScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/shoeman_1.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            // spreadRadius: 5,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/shoeman_4.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            // spreadRadius: 5,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/shoeman_5.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            // spreadRadius: 5,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/shoeman_6.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            // spreadRadius: 5,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/shoeman_1.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    // spreadRadius: 1,
                    blurRadius: 1,
                    // offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: size.width,
              height: 65,
              child: Stack(
                // overflow: Overflow.visible,
                children: [
                  // CustomPaint(
                  //   size: Size(size.width, 80),
                  //   painter: BNBCustomPainter(),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: SizedBox(
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: ImageIcon(
                              const AssetImage("assets/images/home.png"),
                              color:
                                  mainIndex == 0 ? Colors.amber : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                mainIndex = 0;
                              });
                            },
                            splashColor: Colors.white,
                          ),
                          IconButton(
                              icon: ImageIcon(
                                const AssetImage("assets/images/list.png"),
                                color: mainIndex == 1
                                    ? Colors.amber
                                    : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainIndex = 1;
                                });
                              }),
                          IconButton(
                              icon: ImageIcon(
                                const AssetImage("assets/images/box.png"),
                                color: mainIndex == 2
                                    ? Colors.amber
                                    : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainIndex = 2;
                                });
                              }),
                          IconButton(
                              icon: ImageIcon(
                                const AssetImage(
                                    "assets/images/profile_icon.png"),
                                color: mainIndex == 3
                                    ? Colors.amber
                                    : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  mainIndex = 3;
                                });
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
