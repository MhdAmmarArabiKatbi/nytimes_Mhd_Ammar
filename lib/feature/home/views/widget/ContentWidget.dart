import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_colors.dart';
import '../../model/AllsectionModel.dart';

class ContentWidget extends StatefulWidget{
  Results? item;
  int? maxLines;

  ContentWidget({super.key, required this.item,this. maxLines});

  @override
  State<StatefulWidget> createState() {

    return ContentWidgetState();
  }
  
}
class ContentWidgetState extends State<ContentWidget>{
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding:  EdgeInsetsDirectional.only(end: 8.w),
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 1.h),
            child: Text(widget.item?.title??"",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w600),maxLines: widget.maxLines,overflow:widget.maxLines!=null? TextOverflow.ellipsis:null,),
          ),
          Row(children: [
            Expanded(child: Text(widget.item?.byline??"",style: TextStyle(fontSize: 9.sp),)),
            Row(
              children: [
                Icon(Icons.calendar_today,color: AppColors.grey,size: 4.w,),
                SizedBox(width: 1.w,),
                Text(widget.item?.publishedDate??"",style: TextStyle(fontSize: 8.sp,)),
              ],
            )
          ],)
        ],),
      ),
    );
  }
  
}