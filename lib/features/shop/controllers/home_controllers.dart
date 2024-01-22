import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  updatePageIndicatorIndex(index) {
    carouselCurrentIndex.value = index;
   
  }
}
