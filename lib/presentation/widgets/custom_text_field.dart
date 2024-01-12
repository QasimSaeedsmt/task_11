import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/icon_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/extensions/validation_extension.dart';

import '../../businessLogic/bloc/textFieldBloc/text_field_bloc.dart';
import '../../constants/dimension_resources.dart';

class CustomTextField extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final bool isNewPassScreenField;
  final bool isConfirmPassword;
  final TextEditingController controller;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.isNewPassScreenField = false,
      this.isPassword = false,
      this.isConfirmPassword = false,
      this.isEmail = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      builder: (context, state) {
        if (state is PasswordHiddenState) {
          hidePass = true;
        } else if (state is PasswordShownState) {
          hidePass = false;
        } else if (state is ConfirmPassHiddenState) {
          hideConfirmPass = true;
        } else if (state is ConfirmPassShownState) {
          hideConfirmPass = false;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: DimensionResources.D_8,
              horizontal: DimensionResources.D_4),
          child: TextFormField(
            controller: controller,
            keyboardType:
                isEmail ? TextInputType.emailAddress : TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: isEmail
                ? (value) {
                    if (value?.isEmpty ?? false) {
                      return StringResources.EMPTY_EMAIL_MSG;
                    } else if (!value!.isValidEmail) {
                      return StringResources.INVALID_EMAIL_MSG;
                    }
                    return null;
            }
                : isNewPassScreenField
                ? (value) {
              firstPassword = value;
              if (value?.isEmpty ?? false) {
                return StringResources.EMPTY_PASSWORD_MSG;
              } else if (!value!.isValidPassword()) {
                return StringResources.INVALID_PASSWORD_MSG;
              }
              return null;
            }
                : isPassword
                ? (value) {
              if (value?.isEmpty ?? false) {
                return StringResources.EMPTY_PASSWORD_MSG;
              } else if (!value!.isValidPassword()) {
                return StringResources.INVALID_PASSWORD_MSG;
              }
              return null;
            }
                : isConfirmPassword
                ? (value) {
              if (value?.isEmpty ?? false) {
                return StringResources.EMPTY_PASSWORD_MSG;
              }
              if (!value!.isValidPassword()) {
                return StringResources.INVALID_PASSWORD_MSG;
              }
              if (value != firstPassword) {
                return StringResources
                    .PASSWORD_MISMATCH_ERROR;
              }

              return null;
            }
                : null,
            obscureText: isPassword
                ? hidePass
                : isNewPassScreenField
                ? hidePass
                : isConfirmPassword
                ? hideConfirmPass
                : false,
            decoration: InputDecoration(
                hintStyle: const TextStyle(
                    color: ColorResources.HINT_TEXT_COLOR,
                    fontFamily: ConstantsResources.LIGHT_FAMILY),
                hintText: isPassword || isNewPassScreenField
                    ? StringResources.PASSWORD_LABEL
                    : isConfirmPassword
                    ? StringResources.CONFIRM_NEW_PASS_LABEL
                    : isEmail
                    ? StringResources.EMAIL_LABEL
                    : null,
                suffixIconColor: ColorResources.GREY_COLOR,
                suffixIconConstraints: const BoxConstraints(
                    minHeight: DimensionResources.D_14,
                    minWidth: DimensionResources.D_30),
                suffixIcon: isPassword || isNewPassScreenField
                    ? IconButton(
                    onPressed: () {
                      context.read<TextFieldBloc>().add(
                          hidePass ? ShowPassEvent() : HidePassEvent());
                    },
                    icon: SvgPicture.asset(
                      IconResources.PASS_WORD_SUFFIX,
                    ))
                    : isConfirmPassword
                    ? IconButton(
                    onPressed: () {
                      context.read<TextFieldBloc>().add(hideConfirmPass
                          ? ShowConfirmPassEvent()
                          : HideConfirmPassEvent());
                    },
                    icon: SvgPicture.asset(
                        IconResources.PASS_WORD_SUFFIX))
                    : null,
                prefixIconConstraints: const BoxConstraints(
                    minHeight: DimensionResources.D_14,
                    minWidth: DimensionResources.D_40),
                prefixIcon: isEmail
                    ? SvgPicture.asset(
                  IconResources.EMAIL_ICON,
                  height: DimensionResources.D_24,
                  width: DimensionResources.D_24,
                )
                    : isPassword || isConfirmPassword || isNewPassScreenField
                    ? SvgPicture.asset(
                  IconResources.LOCK_ICON,
                  height: DimensionResources.D_24,
                  width: DimensionResources.D_24,
                )
                    : null,
                fillColor: ColorResources.WHITE_COLOR,
                filled: true,
                border: InputBorder.none),
          ),
        );
      },
    );
  }
}

bool hidePass = true;
bool hideConfirmPass = true;

String? firstPassword;
