
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimes_assesments/feature/home/cubit/home_cubit.dart';
import 'package:nytimes_assesments/feature/home/cubit/home_state.dart';
import 'package:nytimes_assesments/feature/home/views/widget/ContentWidget.dart';
import 'package:nytimes_assesments/feature/home/views/widget/ImageWidget.dart';
import 'package:sizer/sizer.dart';

import '../../../core/di/injection_container.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/constant.dart';
import '../../../core/utils/routing/routes.dart';
import '../../../core/views/widgets/error_widget.dart';
import '../../../core/views/widgets/loader_widget.dart';
import '../../../core/views/widgets/error_widget.dart'as sdf;
import '../../../core/views/widgets/safe_on_tap.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  late HomeCubit _homeCubit;


  @override
  void initState() {
    super.initState();
    _homeCubit = getIt<HomeCubit>();
    _homeCubit.getMostViewed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.menu),title: const Text(Constant.homeTitle),centerTitle: true,actions: [
        const Icon(Icons.search),
        SizedBox(width: 2.w,),
        const Icon(Icons.more_vert),
      ],),
      body: BlocBuilder<HomeCubit, HomeCubitState>(

        bloc: _homeCubit,
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => loaderWidget(),
              loaded: (data) {
                return ListView.builder(
                  itemCount: data.results?.length??0,
                    itemBuilder: (context,index){
                    final item = data.results?[index];
                  return SafeOnTap(onSafeTap: (){
                    Navigator.pushNamed(context, AppRoutes.itemDetails, arguments:
                      item
                    );
                  },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
                        ImageWidget(item,),
                        ContentWidget(item:item,maxLines: 2,),
                        const Icon(Icons.arrow_forward_ios,color: AppColors.grey,size: 18,)
                      ],),
                    ),
                  );
                });
              },
              error: (error) => const ErrorTextWidget(
                 ),
              orElse: () => Container());
        },
      ),
    );
  }






}
