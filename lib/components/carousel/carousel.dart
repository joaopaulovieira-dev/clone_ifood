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
  //TODO: LISTA DE IMAGENS
  final List<String> letters = [
    "I",
    "F",
    "O",
    "O",
    "D",
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
            height: 120,
            child: CarouselSlider.builder(
              unlimitedMode: true,
              controller: _sliderController,
              slideBuilder: (index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text(
                    letters[index],
                    style: TextStyle(fontSize: 200, color: Colors.red),
                  ),
                );
              },
              slideTransform: DefaultTransform(),
              slideIndicator: CircularSlideIndicator(
                padding: EdgeInsets.only(bottom: 32),
                indicatorBorderColor: Colors.black,
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