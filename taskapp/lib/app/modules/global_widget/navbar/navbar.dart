import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key,  this.rarro=false});
  final bool rarro;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: SvgPicture.asset(StaticImg.larrof),
              ),
              const SizedBox(width: 8),
              Text(StaticString.back),
            ],
          ),
          rarro?InkWell(onTap: () {}, child: SvgPicture.asset(StaticImg.set)):SizedBox(),
        ],
      ),
    );
  }
}
