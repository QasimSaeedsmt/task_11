// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/loginBloc/login_bloc.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/utils/custom_app_bar.dart';

import '../../businessLogic/bloc/loginBloc/login_event.dart';
import '../../businessLogic/bloc/loginBloc/login_state.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                children: [
                  const SizedBox(
                    height: DimensionResources.D_100,
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        StringResources.LOGIN_LABEL,
                        style: TextStyle(
                          fontFamily: ConstantsResources.REGULAR_FAMILY,
                          fontSize: DimensionResources.D_24,
                          color: ColorResources.PRIMARY_COLOR,
                        ),
                      )),
                  CustomTextField(
                    controller: emailController,
                    isEmail: true,
                  ),
                  CustomTextField(
                    controller: passController,
                    isPassword: true,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      bool loading = false;
                      if (state is LoadingLoginState) {
                        loading = true;
                      }
                      if (state is LoginFailureState) {
                        loading = false;
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
                          String email = emailController.text;
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<LoginBloc>().add(LoginButtonPressed(
                                context: context,
                                emailAddress: email,
                                password: passController.text));
                          }
                        },
                      );
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: DimensionResources.D_10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, FORGET_PASS_SCREEN_ROUTE);
                          },
                          child: const Text(
                            StringResources.FORGOT_PASS_QUES_LABEL,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: ConstantsResources.REGULAR_FAMILY,
                                decorationColor: ColorResources.PRIMARY_COLOR,
                                color: ColorResources.PRIMARY_COLOR),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }
}
