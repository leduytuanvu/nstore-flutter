import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vuldt_task_ecomerce/page_1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VuLDT_TaskEcomerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CarouselWithIndicatorDemo(),
    );
  }
}
