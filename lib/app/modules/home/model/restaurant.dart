import 'package:food_delivery/app/modules/home/model/menu.dart';

import '../../../../utils/image_path/common_img.dart';

class Restaurant {
  String image;
  String time;
  String title;
  List? menuList;

  Restaurant({required this.image, required this.time, required this.title, this.menuList});
}

List<Restaurant> restaurantList = [
  Restaurant(
    title: "Vegan Resto",
    time: "12 Min",
    image: CommonImg.restaurantImage1,
    menuList: [
      Menu(image: CommonImg.menu1, price: 7, title: 'Chocolate Chip Cookies', subtitle: 'Chocolate Chip Cookies'),
      Menu(
          image: CommonImg.menu2,
          price: 7,
          title: 'White Chocolate Dipped Croissant',
          subtitle: 'White Chocolate Dipped Croissant'),
      Menu(image: CommonImg.menu1, price: 7, title: 'Chocolate Chip Cookies', subtitle: 'Chocolate Chip Cookies'),
      Menu(
          image: CommonImg.menu2,
          price: 7,
          title: 'White Chocolate Dipped Croissant',
          subtitle: 'White Chocolate Dipped Croissant'),
    ],
  ),
  Restaurant(title: "Healthy Food", time: "12 Min", image: CommonImg.restaurantImage2, menuList: [
    Menu(image: CommonImg.menu1, price: 7, title: 'Chocolate Chip Cookies', subtitle: 'Chocolate Chip Cookies'),
    Menu(
        image: CommonImg.menu2,
        price: 7,
        title: 'White Chocolate Dipped Croissant',
        subtitle: 'White Chocolate Dipped Croissant'),
  ]),
  Restaurant(title: "Vegan Resto", time: "12 Min", image: CommonImg.restaurantImage1, menuList: []),
  Restaurant(title: "Healthy Food", time: "12 Min", image: CommonImg.restaurantImage2, menuList: []),
];
