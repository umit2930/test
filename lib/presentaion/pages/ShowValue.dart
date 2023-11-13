import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/presentaion/blocks/sharedPerfrence/shared_perfrence_cubit.dart';
import 'package:untitled1/presentaion/pages/EditValue.dart';
import 'package:untitled1/presentaion/widget/app_button.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';
import 'package:untitled1/service_locator.dart';

class ShowValue extends StatefulWidget {
  static final route = GoRoute(
    name: 'showValue',
    path: '/show_value',
    builder: (_, __) => const ShowValue(),
  );

  const ShowValue({Key? key}) : super(key: key);

  @override
  State<ShowValue> createState() => _ShowValueState();
}

class _ShowValueState extends State<ShowValue> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.nature.shade300,
          body: ScreenUtilInit(
              designSize: const Size(392, 783),
              child: BlocProvider<SharedPreferencesCubit>(
                  create: (_) => sl(),
                  child: BlocConsumer<SharedPreferencesCubit,
                          SharedPreferencesState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              AppText(context
                                      .read<SharedPreferencesCubit>()
                                      .getToken()
                                      .isEmpty
                                  ? "داده ای برای نمایش وجود ندارد"
                                  : context
                                      .read<SharedPreferencesCubit>()
                                      .getToken()),
                              AppButton(
                                  onPressed: () {
                                    context.pushNamed(EditValue.route.name!);
                                  },
                                  text: 'edit'),
                              AppButton(onPressed: () {}, text: 'api')
                            ],
                          ),
                        );
                      })))),
    );
  }
}
