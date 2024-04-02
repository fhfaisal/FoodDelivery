// To parse this JSON data, do
//
//     final menu = menuFromJson(jsonString);

import 'dart:convert';

Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));

String menuToJson(Menu data) => json.encode(data.toJson());

class Menu {
  String? image;
  String? title;
  String? time;
  String? subtitle;
  int? price;

  Menu({
    this.image,
    this.title,
    this.time,
    this.subtitle,
    this.price,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    image: json["image"],
    title: json["title"],
    time: json["time"],
    subtitle: json["subtitle"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "time": time,
    "subtitle": subtitle,
    "price": price,
  };
}
