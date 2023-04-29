import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../core/utils/app_colors.dart';

loaderWidget({Color color = AppColors.blue, double size = 50.0}) {
  return Center(
    child: SpinKitFadingCircle
      (
      color: color,
      size: size,
    ),
  );
}