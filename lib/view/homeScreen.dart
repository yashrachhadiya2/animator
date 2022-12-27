
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homeController.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeController homeController = Get.put(HomeController());

  AnimationController? _animationController;

  Animation? rotate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    rotate = Tween<double>(begin: 10, end: 30).animate(_animationController!);

    _animationController!..repeat();

    rotate!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text(
            "plannet",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: homeController.details.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 12),
                    child: Transform.rotate(
                      angle: rotate!.value * 1,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                            "${homeController.details[index].photo}"),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
