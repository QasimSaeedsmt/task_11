import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';

import '../../constants/responsive_constants.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String customLabel;
  final bool customLabelRequired;

  const CustomButton(
      {super.key,
      required this.onTap,
      this.customLabel = StringResources.EMPTY_STRING,
      this.customLabelRequired = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: DimensionResources.D_20),
        child: Container(
          height: DimensionResources.D_60,
          width: MediaQuery.of(context).size.width * ResponsiveConstants.R_88,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DimensionResources.D_5),
              color: ColorResources.PRIMARY_COLOR),
          child: Center(
            child: Text(
              customLabelRequired
                  ? customLabel
                  : StringResources.CONTINUE_LABEL,
              style: const TextStyle(
                  color: ColorResources.WHITE_COLOR,
                  fontSize: DimensionResources.D_16,
                  fontFamily: ConstantsResources.REGULAR_FAMILY),
            ),
          ),
        ),
      ),
    );
  }
}
