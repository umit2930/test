import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/presentaion/blocks/sharedPerfrence/shared_perfrence_cubit.dart';
import 'package:untitled1/presentaion/widget/app_button.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';
import 'package:untitled1/service_locator.dart';

class DeleteValue extends StatefulWidget {
  static final route = GoRoute(
    name: 'DeleteValue',
    path: '/delete_value',
    builder: (_, __) => const DeleteValue(),
  );

  const DeleteValue({Key? key}) : super(key: key);

  @override
  State<DeleteValue> createState() => _DeleteValueState();
}

class _DeleteValueState extends State<DeleteValue> {
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
                              AppButton(
                                  onPressed: () {
                                    context
                                        .read<SharedPreferencesCubit>()
                                        .clearToken();
                                  },
                                  text: 'delete')
                            ],
                          ),
                        );
                      })))),
    );
  }
}
