import 'package:food_delivery/utils/image_path/onBoarding_img.dart';

class OnBoardingContent {
  String image;
  String body;
  String title;

  OnBoardingContent({required this.image, required this.body,required this.title});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    title: "Find Your Comfort Food Here",
    body: "Here You Can find a chef or dish for every taste and color. Enjoy!",
    image: OnBoardingImg.onBoarding1,
  ),
  OnBoardingContent(
    title: "Food Ninja is Where Your Comfort Lives",
    body: "Enjoy a fast and smooth food delivery at your doorstep",
    image: OnBoardingImg.onBoarding2,
  ),
];
