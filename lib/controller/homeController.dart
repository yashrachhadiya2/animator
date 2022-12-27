import 'package:get/get.dart';

import '../modal/modal.dart';


class HomeController extends GetxController
{
  List <Model> details = [
    Model(name: "Earth",photo: "asset/image/earth.png",),
    Model(name: "Mars",photo: "asset/image/mars.png",),
    Model(name: "Mercury",photo: "asset/image/mercury.png",),
    Model(name: "Moon",photo: "asset/image/moon.png",),
    Model(name: "Neptune",photo: "asset/image/neptune.png",),
  ];

  Model? detailsdata;
}