import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/otpBloc/otp_bloc.dart';
import 'package:task_11/businessLogic/bloc/otpBloc/otp_event.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/extensions/build_context_extension.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/presentation/widgets/custom_opt_field.dart';

import '../../businessLogic/bloc/otpBloc/otp_state.dart';
import '../../utils/custom_app_bar.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  FocusNode opt1FocusNode = FocusNode();
  FocusNode opt2FocusNode = FocusNode();
  FocusNode opt3FocusNode = FocusNode();
  FocusNode opt4FocusNode = FocusNode();
  TextEditingController opt1Controller = TextEditingController();
  TextEditingController opt2Controller = TextEditingController();
  TextEditingController opt3Controller = TextEditingController();
  TextEditingController opt4Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar()
          .buildCustomAppBar(context, StringResources.VERIFICATION_LABEL, true),
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
              Container(
                height: DimensionResources.D_110,
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OTPTextField(
                        focusNode: opt1FocusNode, controller: opt1Controller),
                    OTPTextField(
                        focusNode: opt2FocusNode, controller: opt2Controller),
                    OTPTextField(
                        focusNode: opt3FocusNode, controller: opt3Controller),
                    OTPTextField(
                        focusNode: opt4FocusNode, controller: opt4Controller),
                  ],
                ),
              ),
              BlocBuilder<OTPVerificationBloc, OTPVerificationState>(
                builder: (context, state) {
                  bool loading = false;
                  if (state is LoadingOTPVerificationState) {
                    loading = true;
                  }
                  return CustomButton(
                      loadingRequired: true,
                      customWidget: loading
                          ? const CircularProgressIndicator(
                              color: ColorResources.WHITE_COLOR,
                            )
                          : const Text(
                              StringResources.CONTINUE_LABEL,
                              style: TextStyle(
                                  color: ColorResources.WHITE_COLOR,
                                  fontSize: DimensionResources.D_17,
                                  fontFamily:
                                      ConstantsResources.REGULAR_FAMILY),
                            ),
                      onTap: () {
                        String otp = opt1Controller.text +
                            opt2Controller.text +
                            opt3Controller.text +
                            opt4Controller.text;
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<OTPVerificationBloc>().add(
                              OTPVerificationButtonPressed(
                                  context: context, otp: otp));
                        } else {
                          context.showSnackbar(
                              StringResources.INCOMPLETE_OPT_ERROR,
                              backgroundColor: ColorResources.PRIMARY_COLOR);
                        }
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    opt1Controller.dispose();
    opt2Controller.dispose();
    opt3Controller.dispose();
    opt4Controller.dispose();
    opt1FocusNode.unfocus();
    opt2FocusNode.unfocus();
    opt3FocusNode.unfocus();
    opt4FocusNode.unfocus();
    super.dispose();
  }
}
