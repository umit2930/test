import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/presentaion/blocks/sharedPerfrence/shared_perfrence_cubit.dart';
import 'package:untitled1/presentaion/pages/DeletValue.dart';
import 'package:untitled1/presentaion/widget/app_button.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';
import 'package:untitled1/presentaion/widget/input_text.dart';
import 'package:untitled1/service_locator.dart';

class EditValue extends StatefulWidget {
  static final route = GoRoute(
    name: 'EditValue',
    path: '/edit_value',
    builder: (_, __) => const EditValue(),
  );

  const EditValue({Key? key}) : super(key: key);

  @override
  State<EditValue> createState() => _EditValueState();
}

class _EditValueState extends State<EditValue> {
  final controller = TextEditingController();

  SharedPreferencesCubit cubit = sl();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.text = cubit.getToken();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.nature.shade300,
          body: ScreenUtilInit(
              designSize: const Size(392, 783),
              child: BlocProvider<SharedPreferencesCubit>(
                  create: (_) => cubit,
                  child: BlocConsumer<SharedPreferencesCubit,
                          SharedPreferencesState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              InputText(
                                  controller: controller,
                                  type: TextInputType.text),
                              AppButton(
                                  onPressed: () {
                                    context
                                        .read<SharedPreferencesCubit>()
                                        .saveToken(controller.text);
                                  },
                                  text: 'edit'),
                              AppButton(
                                  onPressed: () {
                                    context.pushNamed(DeleteValue.route.name!);
                                  },
                                  text: 'delete')
                            ],
                          ),
                        );
                      })))),
    );
  }
}
