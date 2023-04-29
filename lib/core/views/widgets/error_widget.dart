import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_colors.dart';
import '../../utils/constant.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Constant.error,
          style: TextStyle(color: AppColors.red, fontSize: 16.sp)),
    );
  }
}
