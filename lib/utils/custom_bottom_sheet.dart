import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/bottomSheetBloc/bottom_sheet_event.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/utils/custom_dialog.dart';

import '../businessLogic/bloc/bottomSheetBloc/bottom_sheet_bloc.dart';
import '../businessLogic/bloc/bottomSheetBloc/bottom_sheet_state.dart';

class CustomBottomSheet {
  void showCustomBottomSheet(BuildContext context) {
    String consent = StringResources.NO_LABEL;
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return BlocBuilder<BottomSheetBloc, BottomSheetState>(
              builder: (context, state) {
                if (state is YesConsentState) {
                  consent = StringResources.YES_LABEL;
                }
                if (state is NoConsentState) {
                  consent = StringResources.NO_LABEL;
                }
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(DimensionResources.D_12),
                          topLeft: Radius.circular(DimensionResources.D_12)),
                      color: ColorResources.CONTAINER_COLOR),
                  height: DimensionResources.D_213,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: DimensionResources.D_20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: DimensionResources.D_25),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            StringResources.PACKING_ORDER_QUESTION,
                            style: TextStyle(
                                color: ColorResources.TEXT_SECONDARY_COLOR,
                                fontSize: DimensionResources.D_14,
                                fontFamily: ConstantsResources.LIGHT_FAMILY),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: DimensionResources.D_12),
                        child: Row(
                          children: [
                            Radio(
                              focusColor: ColorResources.TEXT_SECONDARY_COLOR,
                              hoverColor: ColorResources.TEXT_SECONDARY_COLOR,
                              activeColor: ColorResources.WHITE_COLOR,
                              value: StringResources.NO_LABEL,
                              groupValue: consent,
                              onChanged: (value) {
                                context
                                    .read<BottomSheetBloc>()
                                    .add(NoConsentEvent());
                              },
                            ),
                            const Text(
                              StringResources.NO_LABEL,
                              style: TextStyle(
                                color: ColorResources.TEXT_SECONDARY_COLOR,
                              ),
                            ),
                            Radio(
                                activeColor: ColorResources.WHITE_COLOR,
                                hoverColor: ColorResources.TEXT_SECONDARY_COLOR,
                                focusColor: ColorResources.TEXT_SECONDARY_COLOR,
                                value: StringResources.YES_LABEL,
                                groupValue: consent,
                                onChanged: (value) {
                                  context
                                      .read<BottomSheetBloc>()
                                      .add(YesConsentEvent());
                                }),
                            const Text(
                              StringResources.YES_LABEL,
                              style: TextStyle(
                                color: ColorResources.TEXT_SECONDARY_COLOR,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        onTap: () {
                          Navigator.pop(context);
                          CustomDialog().showVerificationDialog(context);
                        },
                        customLabelRequired: true,
                        customLabel: StringResources.LETS_GO_LABEL,
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
