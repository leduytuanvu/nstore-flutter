import 'package:flutter/material.dart';
import 'package:vuldt_task_ecomerce/page_3.dart';

class DetailProductScreen extends StatelessWidget {
  final String image;
  final double price;
  const DetailProductScreen(
      {Key? key, required this.image, required this.price})
      : super(key: key);

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
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 390,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0.0,
                      top: 50.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.black,
                        ),
                        width: 230,
                        height: 82,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$ 59.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      fontFamily: 'Montserrat'),
                                ),
                                TextSpan(
                                  text: '58',
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 30,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          image,
                          height: 280,
                          width: 260,
                          fit: BoxFit.fill,
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   left: 6,
                    //   child: Image.asset(
                    //     image,
                    //     height: 200,
                    //     width: 200,
                    //   ),
                    // ),
                    Positioned(
                      bottom: 0,
                      left: 34,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_rounded,
                              color: Colors.pink.shade200,
                            ),
                            const Text(
                              '100%',
                              style: TextStyle(fontSize: 6),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text(
                  'Boat Rockerz 350 On-Ear Bluetooth Headphones',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Container(
                  height: 25,
                  alignment: Alignment.center,
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Detail',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Lorrm ipsum color sit amet consactetur adippiscing elit, sed do eiusmod tempor ut labore et clolore mangn aliqua, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. You can choose to make a recurring donation, a single contribution, or a tribute gift to help end illiteracy. Please contact us at info@USAReads.org if you would like to discuss options further. 92% of donations are allocated to the USA Reads programs. Candid seal platinum 2022All administration costs are covered by corporate and philanthropic funding and you can rest assured your donation will lead to getting as many books as possible into the hands of children across the United States',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.white70,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber.withOpacity(0.9),
                      spreadRadius: 50,
                      blurRadius: 30,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Page3(
                          image: image,
                        ),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'View Product',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
