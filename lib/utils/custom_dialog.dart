import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/image_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/widgets/custom_button.dart';
import 'package:task_11/utils/custom_bottom_sheet.dart';
import 'package:task_11/utils/custom_toast.dart';

class CustomDialog {
  void showLicenseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: ColorResources.CONTAINER_COLOR,
          title: const Padding(
            padding: EdgeInsets.only(top: DimensionResources.D_05),
            child: Text(
              StringResources.LICENSE_PLATE_NO_LABEL,
              style: TextStyle(
                  color: ColorResources.TEXT_SECONDARY_COLOR,
                  fontSize: DimensionResources.D_18,
                  fontFamily: ConstantsResources.LIGHT_FAMILY),
            ),
          ),
          content: SizedBox(
            height: DimensionResources.D_175,
            child: Column(
              children: [
                const SizedBox(
                  height: DimensionResources.D_15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: ColorResources.TEXT_SECONDARY_COLOR,
                          fontFamily: ConstantsResources.LIGHT_FAMILY,
                          fontSize: DimensionResources.D_15),
                      hintText: StringResources.ENTER_PLATE_NO_LABEL,
                      fillColor: ColorResources.FIELD_FILL_COLOR,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(DimensionResources.D_5))),
                ),
                const SizedBox(
                  height: DimensionResources.D_10,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, DRIVE_TOUR_SCREEN_ROUTE);
                    CustomBottomSheet().showCustomBottomSheet(context);
                  },
                  customLabelRequired: true,
                  customLabel: StringResources.NEXT_LABEL,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void showVerificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: DimensionResources.D_20),
          child: AlertDialog(
            backgroundColor: ColorResources.WHITE_COLOR,
            title: const Padding(
              padding: EdgeInsets.only(
                  top: DimensionResources.D_10, left: DimensionResources.D_5),
              child: Text(
                StringResources.VERIFY_ORDERS_LABEL,
                style: TextStyle(
                  color: ColorResources.PRIMARY_COLOR,
                  fontSize: DimensionResources.D_18,
                  fontFamily: ConstantsResources.REGULAR_FAMILY,
                ),
              ),
            ),
            content: SizedBox(
              height: DimensionResources.D_620,
              child: Stack(
                children: [
                  SizedBox(
                    height: DimensionResources.D_560,
                    width: DimensionResources.D_300,
                    child: AlignedGridView.count(
                      shrinkWrap: true,
                      crossAxisCount: ConstantsResources.GRID_CROSS_AXIS_COUNT,
                      mainAxisSpacing: DimensionResources.D_8,
                      crossAxisSpacing: DimensionResources.D_3,
                      itemCount: ConstantsResources.RANDOM_ITEM_COUNT,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(DimensionResources.D_8),
                            child: Stack(
                              children: [
                                Container(
                                  height: DimensionResources.D_170,
                                  width: DimensionResources.D_140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        DimensionResources.D_8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        DimensionResources.D_8),
                                    child: const Image(
                                      image: AssetImage(
                                          ImageResources.RANDOM_PICTURE),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: DimensionResources.D_0,
                                  child: Container(
                                    color: ColorResources.WHITE_COLOR,
                                    height: DimensionResources.D_60,
                                    width: DimensionResources.D_140,
                                  ),
                                ),
                                const Positioned(
                                  bottom: DimensionResources.D_25,
                                  left: DimensionResources.D_8,
                                  child: SizedBox(
                                    width: DimensionResources.D_120,
                                    child: Text(
                                      StringResources.RANDOM_NAME_TWO,
                                      maxLines:
                                          ConstantsResources.TITLE_MAX_LINES,
                                      style: TextStyle(
                                          color: ColorResources.BLACK_COLOR,
                                          fontWeight: FontWeight.w800,
                                          fontSize: DimensionResources.D_11,
                                          fontFamily: ConstantsResources
                                              .REGULAR_FAMILY),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: DimensionResources.D_8,
                                  left: DimensionResources.D_8,
                                  child: Text(
                                    StringResources.RANDOM_QUANTITY,
                                    style: TextStyle(
                                        fontSize: DimensionResources.D_9,
                                        color: ColorResources.HINT_TEXT_COLOR,
                                        fontFamily:
                                            ConstantsResources.LIGHT_FAMILY,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: DimensionResources.D_1,
                    right: DimensionResources.D_8,
                    left: DimensionResources.D_8,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        CustomToast().showUnderDevelopmentToast();
                      },
                      child: Container(
                        height: DimensionResources.D_55,
                        width: DimensionResources.D_260,
                        decoration: BoxDecoration(
                            color: ColorResources.PRIMARY_COLOR,
                            borderRadius:
                                BorderRadius.circular(DimensionResources.D_5)),
                        child: const Center(
                          child: Text(
                            StringResources.OKAY_LABEL,
                            style: TextStyle(
                              fontSize: DimensionResources.D_15,
                              color: ColorResources.WHITE_COLOR,
                              fontFamily: ConstantsResources.REGULAR_FAMILY,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
