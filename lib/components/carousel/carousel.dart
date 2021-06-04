import 'package:clone_ifood/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class Carousel extends StatefulWidget {
  Carousel({
    Key? key,
  }) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> letters = [
    AppImages.carousel1,
    AppImages.carousel2,
    AppImages.carousel3
  ];

  //bool _isPlaying = false;

  late CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CarouselSlider.builder(
              keepPage: false,
              unlimitedMode: false,
              viewportFraction: 0.9,
              controller: _sliderController,
              slideBuilder: (index) {
                return Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(letters[index]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(16))));
              },
              slideTransform: DefaultTransform(),
              slideIndicator: CircularSlideIndicator(
                  itemSpacing: 20,
                  indicatorBorderWidth: 0.1,
                  alignment: Alignment.bottomCenter,
                  indicatorBorderColor: Colors.grey[600]),
              itemCount: letters.length,
              initialPage: 0,
              enableAutoSlider: false,
            ),
          )
        ],
      ),
    );
  }
}
