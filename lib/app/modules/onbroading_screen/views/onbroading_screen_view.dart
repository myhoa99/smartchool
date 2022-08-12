import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:smartschool/app/routes/app_pages.dart';

import '../controllers/onbroading_screen_controller.dart';

class OnbroadingScreenView extends GetView<OnbroadingScreenController> {
  const OnbroadingScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset('assets/svg/logo.svg'),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  reverse: false,
                  viewportFraction: 1,
                  aspectRatio: 1,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    controller.setSliderIndex(index);
                  },
                ),
                carouselController: controller.carouselCtrl,
                items: controller.onboardings.map(
                  (element) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          element["image"] as String,
                          fit: BoxFit.contain,
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
