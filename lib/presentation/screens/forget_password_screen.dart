import 'package:flutter/material.dart';
import 'package:task_11/extensions/build_context_extension.dart';
import 'package:task_11/presentation/screens/verification_screen.dart';

import '../../constants/color_resources.dart';
import '../../constants/constants_resources.dart';
import '../../constants/dimension_resources.dart';
import '../../constants/responsive_constants.dart';
import '../../constants/string_resources.dart';
import '../../utils/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'login_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().buildLargeCustomAppBar(context),
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: DimensionResources.D_18),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      ResponsiveConstants.R_10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    StringResources.FORGOT_PASS_LABEL,
                    style: TextStyle(
                        color: ColorResources.PRIMARY_COLOR,
                        fontFamily: ConstantsResources.REGULAR_FAMILY,
                        fontSize: DimensionResources.D_24),
                  ),
                ),
                CustomTextField(
                  controller: emailController,
                  isEmail: true,
                ),
                CustomButton(
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.navigateTo(const VerificationScreen());
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      ResponsiveConstants.R_015,
                ),
                TextButton(
                    onPressed: () {
                      context.navigateTo(const LoginScreen());
                    },
                    child: const Text(
                      StringResources.SIGN_IN_TEXT_LABEL,
                      style: TextStyle(
                          fontFamily: ConstantsResources.LIGHT_FAMILY,
                          fontSize: DimensionResources.D_17,
                          decoration: TextDecoration.underline,
                          decorationColor: ColorResources.PRIMARY_COLOR,
                          color: ColorResources.PRIMARY_COLOR),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
