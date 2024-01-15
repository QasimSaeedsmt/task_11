import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/quantity_event.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/image_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/utils/custom_toast.dart';

import '../businessLogic/bloc/quantity_bloc.dart';
import '../businessLogic/bloc/quantity_state.dart';
import '../constants/responsive_constants.dart';

class CustomDialog {
  showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (innerContext) {
        return BlocProvider(
          create: (context) => QuantityBloc(),
          child: BlocBuilder<QuantityBloc, QuantityState>(
            builder: (context, state) {
              return AlertDialog(
                backgroundColor: ColorResources.DELETE_DIALOG_BACKGROUND_COLOR,
                content: SizedBox(
                  height: DimensionResources.D_520,
                  child: BlocBuilder<QuantityBloc, QuantityState>(
                    builder: (context, state) {
                      int quantity = ConstantsResources.INITIAL_QUANTITY;
                      if (state is ItemRemovedState) {
                        quantity = state.quantity;
                      }
                      if (state is ItemAddedState) {
                        quantity = state.quantity;
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: DimensionResources.D_1,
                          ),
                          const Text(
                            StringResources.KFC_GOODS_LABEL,
                            style: TextStyle(
                                color: ColorResources.HINT_TEXT_COLOR,
                                fontSize: DimensionResources.D_12,
                                fontFamily: ConstantsResources.LIGHT_FAMILY),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(ImageResources.KFC2),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(
                                    DimensionResources.D_12)),
                            height: MediaQuery.of(context).size.height *
                                ResponsiveConstants.D_0156,
                            width: MediaQuery.of(context).size.width *
                                ResponsiveConstants.D_0426,
                          ),
                          const Text(
                            StringResources.ENTER_QUANTITY_LABEL,
                            style: TextStyle(
                                color: ColorResources.HINT_TEXT_COLOR,
                                fontSize: DimensionResources.D_16,
                                fontFamily: ConstantsResources.LIGHT_FAMILY),
                          ),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Container(
                              margin: EdgeInsets.zero,
                              height: DimensionResources.D_42,
                              width: DimensionResources.D_180,
                              decoration: BoxDecoration(
                                  color:
                                      ColorResources.QUANTITY_CONTAINER_COLOR,
                                  borderRadius: BorderRadius.circular(
                                      DimensionResources.D_5)),
                              child: Padding(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          context.read<QuantityBloc>().add(
                                              RemoveItemFromListEvent(
                                                  quantity: quantity));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: DimensionResources.D_20,
                                              bottom: DimensionResources.D_05),
                                          child: Container(
                                            height: DimensionResources.D_3,
                                            width: DimensionResources.D_12,
                                            decoration: const BoxDecoration(
                                                color: ColorResources
                                                    .QUANTITY_ICON_COLOR),
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: Text(
                                        quantity.toString(),
                                        style: const TextStyle(
                                            fontSize: DimensionResources.D_20,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.WHITE_COLOR),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: TextButton(
                                          onPressed: () {
                                            context.read<QuantityBloc>().add(
                                                AddIteToListEvent(
                                                    quantity: quantity));
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: DimensionResources.D_25),
                                            child: Text(
                                              StringResources.INCREMENT,
                                              selectionColor:
                                                  Colors.transparent,
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                        color:
                                                            Colors.transparent)
                                                  ],
                                                  fontSize:
                                                      DimensionResources.D_20,
                                                  color: ColorResources
                                                      .QUANTITY_ICON_COLOR),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    ColorResources.BOX_ID_TEXTFIELD_COLOR,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        DimensionResources.D_5)),
                                hintText: StringResources.ENTER_IDS_LABEL,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: DimensionResources.D_15,
                                    horizontal: DimensionResources.D_10),
                                hintStyle: const TextStyle(
                                    color: ColorResources.HINT_TEXT_COLOR,
                                    fontFamily:
                                        ConstantsResources.LIGHT_FAMILY)),
                            maxLines: ConstantsResources.TEXT_FIELD_MAX_LINES,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  CustomToast().showUnderDevelopmentToast();
                                },
                                child: Container(
                                  width: DimensionResources.D_131,
                                  height: DimensionResources.D_55,
                                  decoration: BoxDecoration(
                                      color: ColorResources.PRIMARY_COLOR,
                                      borderRadius: BorderRadius.circular(
                                          DimensionResources.D_5)),
                                  child: const Center(
                                    child: Text(
                                      StringResources.DELETE_LABEL,
                                      style: TextStyle(
                                          color: ColorResources.WHITE_COLOR,
                                          fontFamily:
                                              ConstantsResources.REGULAR_FAMILY,
                                          fontSize: DimensionResources.D_15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    ResponsiveConstants.R_02,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: DimensionResources.D_131,
                                  height: DimensionResources.D_55,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: ColorResources.PRIMARY_COLOR),
                                      borderRadius: BorderRadius.circular(
                                          DimensionResources.D_5)),
                                  child: const Center(
                                    child: Text(
                                      StringResources.CANCEL_LABEL,
                                      style: TextStyle(
                                          color: ColorResources.WHITE_COLOR,
                                          fontFamily:
                                              ConstantsResources.REGULAR_FAMILY,
                                          fontSize: DimensionResources.D_15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
