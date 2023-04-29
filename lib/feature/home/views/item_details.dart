import 'package:flutter/material.dart';
import 'package:nytimes_assesments/feature/home/model/AllsectionModel.dart';
import 'package:nytimes_assesments/feature/home/views/widget/ContentWidget.dart';
import 'package:nytimes_assesments/feature/home/views/widget/ImageWidget.dart';
import 'package:sizer/sizer.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Results;
    return Scaffold(
      appBar: AppBar(title: Text(item.title ?? ""), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWidget(item),
            ContentWidget(item: item),
          ],
        ),
      ),
    );
  }
}
