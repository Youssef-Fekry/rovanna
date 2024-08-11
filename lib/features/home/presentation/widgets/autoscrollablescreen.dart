import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoScrollableScreen extends StatefulWidget {
  const AutoScrollableScreen({super.key});

  @override
  State<AutoScrollableScreen> createState() => _AutoScrollableScreenState();
}

class _AutoScrollableScreenState extends State<AutoScrollableScreen> {
  int activeIndex = 0;
  final controller = CarouselController();
  final assetImages = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
    'assets/images/flashSale.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: assetImages.length,
            itemBuilder: (context, index, realIndex) {
              final assetImage = assetImages[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: double.infinity, // Ensure the width fills the parent
                  child: buildImage(assetImage, index),
                ),
              );
            },
            options: CarouselOptions(
              height: 150, // Adjust height as needed
              autoPlay: true,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          const SizedBox(height: 12),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: kPrimaryColor),
        activeIndex: activeIndex,
        count: assetImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String assetImage, int index) =>
    Image.asset(assetImage, fit: BoxFit.cover);
