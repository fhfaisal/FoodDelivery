import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/home/model/menu.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/gradiant_text.dart';
import 'package:food_delivery/utils/image_path/common_img.dart';
import 'package:food_delivery/utils/image_path/splash_img.dart';
import 'package:food_delivery/utils/static_data.dart';
import 'package:food_delivery/utils/widgets/section_separation.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../model/restaurant.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Home'),
          //   centerTitle: true,
          // ),
          body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                  top: -150,
                  right: -50,
                  child: Transform.rotate(
                    angle: math.pi / 5.5,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 300,
                        color: Colors.white,
                        child: const Image(
                          image: AssetImage(SplashImg.pattern),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: fixMargin(),
                    height: MediaQuery.sizeOf(context).height / 5,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: AutoSizeText(
                            'Find Your Favorite Food',
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: fixMargin(),
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: const Icon(
                              Icons.notifications_outlined,
                              size: 40,
                              color: AppColor.linear1,
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
            Container(
              margin: fixMargin(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: AppColor.secondary.withOpacity(0.4)),
                          cursorColor: AppColor.secondary,
                          decoration: InputDecoration(
                            hintText: 'What do you want to order?',
                            hintStyle: TextStyle(color: AppColor.secondary.withOpacity(0.4)),
                            filled: true,
                            fillColor: AppColor.secondary.withOpacity(0.1),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                              child: Image(
                                image: AssetImage(CommonImg.search),
                                height: 10,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                            border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      Obx(() => controller.explore.value?Tooltip(
                        message: 'Filter',
                        child: GestureDetector(
                          child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColor.secondary.withOpacity(0.1),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Image(
                                  image: AssetImage(CommonImg.filter),
                                  height: 25,
                                  fit: BoxFit.fitHeight,
                                ),
                              )),
                        ),
                      ):const SizedBox(),)
                    ],
                  ),
                  const SizedBox(height: 10),
                  Obx(() => controller.explore.value?
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height / 7,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage(SplashImg.pattern), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(colors: [
                            AppColor.linear1,
                            AppColor.linear2,
                          ]),
                        ),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage(CommonImg.ice),
                              fit: BoxFit.fitWidth,
                            ),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Special Deal For October",
                                      style:
                                      Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                    GestureDetector(
                                      onTap: () => null,
                                      child: Container(
                                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                        child: GradientText(
                                          'Buy Now',
                                          style: Theme.of(context).textTheme.labelLarge,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SectionSeparator(
                        sectionText: 'Nearest Restaurant',
                        isButton: true,
                        buttonText: 'View More',
                        onTap: () => controller.onExplore(),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height/4,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: restaurantList.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () => controller.navigateToDetailsPage(restaurantList[index]),
                            child: Card(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage(restaurantList.elementAt(index).image),fit: BoxFit.fitWidth,height: MediaQuery.sizeOf(context).height/15,),
                                    Column(
                                      children: [
                                        AutoSizeText(restaurantList.elementAt(index).title,style: Theme.of(context).textTheme.titleMedium,),
                                        AutoSizeText(restaurantList.elementAt(index).time,style: Theme.of(context).textTheme.titleSmall,),
                                      ],
                                    )
                                  ],
                                ),
                                                        
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => const SizedBox(width: 10,), ),
                      ),
                      SectionSeparator(
                        sectionText: 'Menu',
                        isButton: true,
                        buttonText: 'View More',
                      ),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: menuList.length,
                        itemBuilder: (context, index) => Card(
                          color: Colors.white,
                          elevation: 0.5,
                          child: GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: ListTile(
                                selectedColor: Colors.red,
                                titleTextStyle: Theme.of(context).textTheme.titleMedium,
                                subtitleTextStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey,fontWeight: FontWeight.normal),
                                leading: ClipOval(
                                    child: Image(image: AssetImage(menuList.elementAt(index).image),fit: BoxFit.fitHeight,)),
                                title: AutoSizeText(menuList.elementAt(index).title),
                                subtitle:AutoSizeText(menuList.elementAt(index).subtitle),
                                trailing: AutoSizeText("\$ ${menuList.elementAt(index).price.toString()}",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColor.secondary),),
                              ),

                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 10,), ),
                    ],
                  )
                      :Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => controller.onExplore(),
                          child: const Icon(Icons.close,color: AppColor.secondary,),
                        ),
                      ),
                      SizedBox(
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: restaurantList.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1,
                                crossAxisCount: 2),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => controller.navigateToDetailsPage(restaurantList[index]),
                              child: Card(
                                color: Colors.white,
                                elevation: 0.5,
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(image: AssetImage(restaurantList.elementAt(index).image),fit: BoxFit.fitWidth,height: MediaQuery.sizeOf(context).height/15,),
                                      Column(
                                        children: [
                                          AutoSizeText(restaurantList.elementAt(index).title,style: Theme.of(context).textTheme.titleMedium,),
                                          AutoSizeText(restaurantList.elementAt(index).time,style: Theme.of(context).textTheme.titleSmall,),
                                        ],
                                      )
                                    ],
                                  ),
                              
                                ),
                              ),
                            ),),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

