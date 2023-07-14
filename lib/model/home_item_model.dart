import 'package:flutter/material.dart';
import 'package:m2_lesson3_hw/utils/app_colors.dart';
import 'package:m2_lesson3_hw/utils/app_images.dart';

class HomeItems {
  String image;
  String name;
  String id;

  HomeItems({required this.image, required this.name, required this.id});

  static List<HomeItems>items = [
    HomeItems(image: AppImages.mDoctor, name: "Zesan H", id: "Medical ID"),
    HomeItems(image: AppImages.mDoctor, name: "Zesan H", id: "Medical ID"),
    HomeItems(image: AppImages.mDoctor, name: "Zesan H", id: "Medical ID"),
    HomeItems(image: AppImages.mDoctor, name: "Zesan H", id: "Medical ID"),
    HomeItems(image: AppImages.mDoctor, name: "Zesan H", id: "Medical ID"),
  ];
}
