

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nytimes_assesments/core/utils/routing/routes.dart';

import '../../../feature/home/views/home.dart';
import '../../../feature/home/views/item_details.dart';



Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homeRoute:
      return CupertinoPageRoute(
          builder: (_) => const HomeScreen(), settings: settings);
    case AppRoutes.itemDetails:
      return CupertinoPageRoute(
          builder: (_) => const ItemDetails(), settings: settings);
    default:
      return null;
  }
}
