import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_colors.dart';
import '../../model/AllsectionModel.dart';

class ImageWidget extends StatefulWidget{
  Results? item;

  ImageWidget(this.item);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageWidgetState();
  }
  
}
class ImageWidgetState extends State<ImageWidget>{
  @override
  Widget build(BuildContext context) {

   return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 3.w),
      child: ClipOval(

        child:CachedNetworkImage(
          width: 12.w,
          height:12.w ,
          imageUrl: ((widget.item?.media?.length ?? 0) != 0)
              ? ((widget.item?.media?[0].mediametadata?.length ?? 0) != 0)
              ? widget.item!.media![0].mediametadata![0].url ?? ""
              : ""
              : "",
          fit: BoxFit.cover,
          fadeInCurve: Curves.easeIn,
          imageBuilder:
              (context, imageProvider) =>
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover),
                ),
              ),
          placeholder: (context, url) =>    const LinearProgressIndicator(
            backgroundColor: AppColors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
          ),
          errorWidget: (context, url, error) =>
              const Center(
                child: Icon(Icons.error),
              ),
        ),
      ),
    );
  }
  
}