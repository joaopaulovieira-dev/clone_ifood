import 'package:clone_ifood/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class Carousel extends StatefulWidget {


  Carousel({Key ? key,}) : super(key: key);

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
            height: 200,
            child: CarouselSlider.builder(
              keepPage: false,
              unlimitedMode: true,
              viewportFraction: 0.8,
              controller: _sliderController,
              slideBuilder: (index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(letters[index]),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(16))
                ));
              },
              slideTransform: DefaultTransform(),
              slideIndicator: CircularSlideIndicator(
                itemSpacing: 20,
                indicatorBorderWidth: 1,
                alignment: Alignment.bottomCenter,
                indicatorBorderColor: Colors.black
              ),
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