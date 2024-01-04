import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/extensions/build_context_extension.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/presentation/widgets/custom_opt_field.dart';

import '../../utils/custom_app_bar.dart';
import 'new_pass_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  TextEditingController value3Controller = TextEditingController();
  TextEditingController value4Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar()
          .buildCustomAppBar(context, StringResources.VERIFICATION_LABEL),
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: DimensionResources.D_18),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: DimensionResources.D_30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: DimensionResources.D_10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      StringResources.ENTER_CODE,
                      style: TextStyle(
                          color: ColorResources.PRIMARY_COLOR,
                          fontFamily: ConstantsResources.REGULAR_FAMILY,
                          fontSize: DimensionResources.D_26),
                    )),
              ),
              const SizedBox(
                height: DimensionResources.D_20,
              ),
              Row(
                children: [
                  OTPTextField(
                      focusNode: focusNode1, controller: value1Controller),
                  OTPTextField(
                      focusNode: focusNode2, controller: value2Controller),
                  OTPTextField(
                      focusNode: focusNode3, controller: value3Controller),
                  OTPTextField(
                      focusNode: focusNode4, controller: value4Controller),
                ],
              ),
              CustomButton(onTap: () {
                if (_formKey.currentState?.validate() ?? false) {
                  context.navigateTo(const NewPasswordScreen());
                }
              })
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    value1Controller.dispose();
    value2Controller.dispose();
    value3Controller.dispose();
    value4Controller.dispose();
    focusNode1.unfocus();
    focusNode2.unfocus();
    focusNode3.unfocus();
    focusNode4.unfocus();
    super.dispose();
  }
}
