import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/responsive_constants.dart';

import '../../businessLogic/bloc/textFieldBloc/text_field_bloc.dart';
import '../../constants/constants_resources.dart';
import '../../constants/dimension_resources.dart';
import '../../constants/string_resources.dart';

class OTPTextField extends StatelessWidget {
  final bool valueAdded;
  final FocusNode focusNode;
  final TextEditingController controller;

  const OTPTextField(
      {super.key,
      required this.focusNode,
      this.valueAdded = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TextFieldBloc>();

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).size.width * ResponsiveConstants.R_02),
        child: TextFormField(
          cursorWidth: DimensionResources.D_06,
          cursorHeight: DimensionResources.D_30,
          focusNode: focusNode,
          style: const TextStyle(
              fontSize: DimensionResources.D_24,
              color: ColorResources.BLACK_COLOR,
              fontFamily: ConstantsResources.REGULAR_FAMILY),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          onChanged: (value) {
            if (value.length == ConstantsResources.OTP_LIMIT) {
              bloc.add(EnterValueEvent());
              FocusScope.of(context).nextFocus();
            }
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value?.isEmpty ?? false) {
              return StringResources.EMPTY_STRING;
            }
            return null;
          },
          inputFormatters: [
            LengthLimitingTextInputFormatter(ConstantsResources.OTP_LIMIT),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                vertical: DimensionResources.D_20,
                horizontal: DimensionResources.D_5),
            filled: true,
            fillColor: ColorResources.HINT_BACKGROUND_COLOR,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DimensionResources.D_8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
