import 'package:food_delivery/utils/image_path/common_img.dart';

class Menu {
  String image;
  String? time;
  String title;
  String subtitle;
  double? price;

  Menu({required this.image, this.time, required this.title,required this.subtitle,this.price});
}
List<Menu> menuList = [
  Menu(
    image: CommonImg.menu1,
    price: 7,
    title: 'Chocolate Chip Cookies',
    subtitle: 'Chocolate Chip Cookies'
  ),
  Menu(
    image: CommonImg.menu2,
    price: 7,
    title: 'White Chocolate Dipped Croissant',
    subtitle: 'White Chocolate Dipped Croissant'
  ),
  Menu(
    image: CommonImg.menu1,
    price: 7,
    title: 'Chocolate Chip Cookies',
    subtitle: 'Chocolate Chip Cookies'
  ),
  Menu(
    image: CommonImg.menu2,
    price: 7,
    title: 'White Chocolate Dipped Croissant',
    subtitle: 'White Chocolate Dipped Croissant'
  ),
];