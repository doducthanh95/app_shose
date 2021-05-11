import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_shoes_app/app/home/widgets/home_slider_item.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  var listImage = [AppImages.icPromotion1, AppImages.icPromotion2];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (context, index, _) {
                  return HomeSliderItem(image: listImage[index]);
                },
                options: CarouselOptions(
                    onPageChanged: (index, _) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    autoPlay: true,
                    initialPage: 0,
                    viewportFraction: 1)),
            SizedBox(
              height: 16,
            ),
            AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: listImage.length,
              effect: WormEffect(
                  activeDotColor: AppColors.blue, dotColor: AppColors.grey),
            )
          ],
        ));
  }
}
