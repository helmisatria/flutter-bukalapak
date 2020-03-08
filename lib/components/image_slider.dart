import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider({Key key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  PageController pageController;

  List<String> images = [
    'https://source.unsplash.com/dah-jZWgzx8/400x300',
    'https://source.unsplash.com/swrVjn4M-_o/400x300',
    'https://source.unsplash.com/LdhTorI9T-o/400x300'
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView.builder(
            itemCount: images.length,
            controller: this.pageController,
            itemBuilder: (context, position) {
              return imageSlider(position);
            }));
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: this.pageController,
      child: Container(
        child: Image.network(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
      builder: (BuildContext context, Widget child) {
        return Center(
          child: SizedBox(
            height: 200,
            width: 300,
            child: widget,
          ),
        );
      },
    );
  }
}
