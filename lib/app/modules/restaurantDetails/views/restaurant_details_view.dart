import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/static_data.dart';

import 'package:get/get.dart';

import '../controllers/restaurant_details_controller.dart';

class RestaurantDetailsView extends GetView<RestaurantDetailsController> {
  const RestaurantDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.restaurantDetails.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: fixMargin(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.elliptical(130, 50),
                    bottomLeft: Radius.elliptical(130, 50),
                  ),
                ),
                child: Image(image: AssetImage(controller.restaurantDetails.image),fit: BoxFit.contain,width: MediaQuery.sizeOf(context).width,),
              ),
              AutoSizeText(controller.restaurantDetails.title,style: Theme.of(context).textTheme.displaySmall,),
              controller.restaurantDetails.menuList!.isNotEmpty
                  ? ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.restaurantDetails.menuList!.length,
                      itemBuilder: (context, index) => Card(
                        color: Colors.white,
                        elevation: 0.5,
                        child: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              selectedColor: Colors.red,
                              titleTextStyle: Theme.of(context).textTheme.titleMedium,
                              subtitleTextStyle: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                              leading: ClipOval(
                                  child: Image(
                                image: AssetImage(controller.restaurantDetails.menuList!.elementAt(index).image),
                                fit: BoxFit.fitHeight,
                              )),
                              title: AutoSizeText(controller.restaurantDetails.menuList!.elementAt(index).title),
                              subtitle: AutoSizeText(controller.restaurantDetails.menuList!.elementAt(index).subtitle),
                              trailing: AutoSizeText(
                                "\$ ${controller.restaurantDetails.menuList!.elementAt(index).price}",
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColor.secondary),
                              ),
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                    )
                  : SizedBox(
                      height: MediaQuery.sizeOf(context).width,
                      child: const AutoSizeText(
                        'No menu item added yet',
                        textAlign: TextAlign.center,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
