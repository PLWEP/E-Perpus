import 'package:flutter/material.dart';
import 'package:perpus/presentation/bloc/student_bloc.dart';
import 'package:perpus/presentation/page/setting_page.dart';
import 'package:perpus/presentation/widget/custom_button.dart';
import 'package:perpus/presentation/widget/custom_dropdown.dart';
import 'package:perpus/presentation/widget/custom_list_tile.dart';
import 'package:perpus/presentation/widget/custom_textfield.dart';
import 'package:perpus/presentation/widget/custom_util_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perpus/utils/theme.dart';

class AddDataPage extends StatefulWidget {
  static const routeName = '/add_data';
  const AddDataPage({Key? key}) : super(key: key);

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  final controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => {
        context.read<StudentBloc>().add(const GetStudentEvent()),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomUtilContainer(
      title: 'Edit Data',
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          SettingPage.routeName,
        );
      },
      child: Column(
        children: [
          CustomTextField(
            controller: controller,
            onChanged: (formName) {
              context.read<StudentBloc>().add(ChangeName(formName));
            },
          ),
          const CustomDropdown(),
          CustomButton(
            width: double.infinity,
            height: 50.h,
            title: 'Submit',
            fontSize: 24.sp,
            onPressed: () {
              context.read<StudentBloc>().add(const AddStudentEvent());
              //   AlertDialog(
              //     content: BlocBuilder<StudentBloc, StudentState>(
              //       builder: (context, state) {
              //         if (state is Loading) {
              //           return const Center(
              //             child: CircularProgressIndicator(),
              //           );
              //         } else if (state is Success) {
              //           controller.clear();
              //           return const Text('Berhasil Ditambahkan');
              //         } else {
              //           return const Text('Failed to load data');
              //         }
              //       },
              //     ),
              //     actions: <Widget>[
              //       TextButton(
              //         child: const Text('Okay'),
              //         onPressed: () {
              //           Navigator.of(context).pop();
              //         },
              //       ),
              //     ],
              //   );
            },
            margin: const EdgeInsets.only(top: 10),
          ),
          const SizedBox(height: 10),
          Text(
            'Lihat Data',
            style: defaultTextStyle.copyWith(fontSize: 36.sp),
          ),
          const Divider(),
          const SizedBox(height: 10),
          BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              if (state is Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is Loaded) {
                final result = state.result;
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final student = result[index];
                      return Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomListTile(
                          name: student.name,
                          className: student.classNumber,
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {},
                          ),
                        ),
                      );
                    },
                    itemCount: result.length,
                  ),
                );
              } else {
                return const Text('Failed to load data');
              }
            },
          ),
        ],
      ),
    );
  }
}
