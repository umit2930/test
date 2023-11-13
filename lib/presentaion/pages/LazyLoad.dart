import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/presentaion/blocks/home/home_cubit.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';

import '../../service_locator.dart';

class LazyLoad extends StatefulWidget {
  static final route = GoRoute(
    name: 'LazyLoad',
    path: '/lazy_load',
    builder: (_, __) => const LazyLoad(),
  );

  const LazyLoad({Key? key}) : super(key: key);

  @override
  State<LazyLoad> createState() => _LazyLoadState();
}

class _LazyLoadState extends State<LazyLoad> {
  final scrollController = ScrollController();
  HomeCubit cubit = sl();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit.getData(0);
    scrollController.addListener(_onScrollControllerChanged);
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScrollControllerChanged);
    scrollController.dispose();
    super.dispose();
  }

  _onScrollControllerChanged() {
    if (scrollController.position.maxScrollExtent -
            scrollController.position.pixels <
        100) {
      if (cubit.state is HomeLoading) {
        return;
      }
      cubit.getData(cubit.state.list.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.nature.shade300,
        body: ScreenUtilInit(
            designSize: const Size(392, 783),
            child: BlocProvider<HomeCubit>(
                create: (_) => cubit,
                child: BlocConsumer<HomeCubit, HomeState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                //page data
                                if (state.list.isNotEmpty) ...[
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state.list.length +
                                        (state is HomeLoading ? 1 : 0),
                                    itemBuilder: (context, index) {
                                      if (index == state.list.length) {
                                        return const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 24,
                                              height: 24,
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          ],
                                        );
                                      }
                                      return AppText(state.list[index]);
                                    },
                                  )
                                ]
                              ],
                            ),
                          ));
                    }))),
      ),
    );
  }
}
