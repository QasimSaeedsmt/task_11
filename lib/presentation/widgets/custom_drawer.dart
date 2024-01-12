import 'package:flutter/material.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/responsive_constants.dart';
import 'package:task_11/constants/string_resources.dart';

import '../../constants/color_resources.dart';
import '../../constants/dimension_resources.dart';
import '../../utils/custom_toast.dart';
import '../router/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        color: ColorResources.PRIMARY_COLOR,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: fullWidth * ResponsiveConstants.R_02,
                      top: fullHeight * ResponsiveConstants.R_005),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: ColorResources.BACKGROUND_COLOR,
                        size: DimensionResources.D_30,
                        weight: DimensionResources.D_10,
                      )),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: DimensionResources.D_20),
                  child: Container(
                    height: DimensionResources.D_64,
                    width: DimensionResources.D_64,
                    decoration: BoxDecoration(
                        color: ColorResources.BACKGROUND_COLOR,
                        borderRadius:
                            BorderRadius.circular(DimensionResources.D_12)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: fullWidth * ResponsiveConstants.R_05,
                      top: fullHeight * ResponsiveConstants.R_02),
                  child: const Text(
                    StringResources.DRIVER_NAME_LABEL,
                    style: TextStyle(
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      fontSize: DimensionResources.D_24,
                      color: ColorResources.BACKGROUND_COLOR,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: fullWidth * ResponsiveConstants.R_05,
                      top: fullHeight * DimensionResources.D_005),
                  child: Text(
                    StringResources.RANDOM_EMAIL,
                    style: TextStyle(
                        fontSize: DimensionResources.D_14,
                        color: ColorResources.BACKGROUND_COLOR
                            .withOpacity(ConstantsResources.LESS_OPACITY),
                        fontFamily: ConstantsResources.REGULAR_FAMILY),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      ResponsiveConstants.R_05,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, WITHOUT_POP_TOUR_ORDER_SCREEN_ROUTE);
                  },
                  title: const Text(
                    StringResources.HOME_LABEL,
                    style: TextStyle(
                      color: ColorResources.BACKGROUND_COLOR,
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      fontSize: DimensionResources.D_18,
                    ),
                  ),
                  leading: const Icon(
                    Icons.home_outlined,
                    color: ColorResources.BACKGROUND_COLOR,
                    size: DimensionResources.D_22,
                  ),
                ),
                ListTile(
                  onTap: () {
                    CustomToast().showUnderDevelopmentToast();
                  },
                  title: const Text(
                    StringResources.CONTACT_US_LABEL,
                    style: TextStyle(
                      color: ColorResources.BACKGROUND_COLOR,
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      fontSize: DimensionResources.D_18,
                    ),
                  ),
                  leading: const Icon(
                    Icons.person_outline,
                    color: ColorResources.BACKGROUND_COLOR,
                    size: DimensionResources.D_22,
                  ),
                ),
                ListTile(
                  onTap: () => CustomToast().showUnderDevelopmentToast(),
                  title: const Text(
                    StringResources.ABOUT_US_LABEL,
                    style: TextStyle(
                      color: ColorResources.BACKGROUND_COLOR,
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      fontSize: DimensionResources.D_18,
                    ),
                  ),
                  leading: const Icon(
                    Icons.info_outline,
                    color: ColorResources.BACKGROUND_COLOR,
                    size: DimensionResources.D_22,
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height *
                        ResponsiveConstants.R_45),
                ListTile(
                  onTap: () => CustomToast().showUnderDevelopmentToast(),
                  leading: const Icon(
                    Icons.login_rounded,
                    color: ColorResources.BACKGROUND_COLOR,
                    size: DimensionResources.D_22,
                  ),
                  title: const Text(
                    StringResources.LOGOUT_LABEL,
                    style: TextStyle(
                      color: ColorResources.BACKGROUND_COLOR,
                      fontFamily: ConstantsResources.REGULAR_FAMILY,
                      fontSize: DimensionResources.D_18,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
