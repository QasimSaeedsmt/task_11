import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/utils/custom_app_bar.dart';

import '../../constants/responsive_constants.dart';
import '../widgets/custom_text_field.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar()
          .buildCustomAppBar(context, StringResources.NEW_PASSWORD_LABEL),
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: DimensionResources.D_18),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    ResponsiveConstants.R_07,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  StringResources.NEW_PASSWORD_LABEL,
                  style: TextStyle(
                      fontSize: DimensionResources.D_24,
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      color: ColorResources.PRIMARY_COLOR),
                ),
              ),
              const SizedBox(
                height: DimensionResources.D_7,
              ),
              CustomTextField(
                controller: passController,
                isNewPassScreenField: true,
              ),
              CustomTextField(
                controller: confirmPassController,
                isConfirmPassword: true,
              ),
              CustomButton(
                  customLabel: StringResources.DONE_LABEL,
                  customLabelRequired: true,
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {}
                  })
            ],
          ),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  void dispose() {
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
}
