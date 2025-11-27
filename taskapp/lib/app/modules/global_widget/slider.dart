import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/static_color/staticcolor.dart';
import '../../../utils/static_img/static_img.dart';
import '../controller/controller.dart';

class MySlider extends StatelessWidget {
  MySlider({super.key, required this.ishomePage});
  final Controller controller = Get.put(Controller());
  final bool ishomePage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.currentindex.value = index;
            },
          ),
          items: ishomePage
              ? StaticImg.foodslider.map((imgPath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          image: DecorationImage(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList()
              : StaticImg.slider.map((imgPath1) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          image: DecorationImage(
                            image: AssetImage(imgPath1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
        ),
        const SizedBox(height: 20),
        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: controller.currentindex.value,
            count: ishomePage
                ? StaticImg.foodslider.length
                : StaticImg.slider.length,
            effect: const WormEffect(
              dotHeight: 10,
              spacing: 8,
              dotWidth: 20,
              activeDotColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
