import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/icon_resources.dart';
import 'package:task_11/constants/image_resources.dart';
import 'package:task_11/constants/responsive_constants.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/utils/custom_dialog.dart';
import 'package:task_11/utils/custom_toast.dart';

class WithOutPopupTourOrderScreen extends StatefulWidget {
  const WithOutPopupTourOrderScreen({super.key});

  @override
  State<WithOutPopupTourOrderScreen> createState() =>
      _WithOutPopupTourOrderScreenState();
}

class _WithOutPopupTourOrderScreenState
    extends State<WithOutPopupTourOrderScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int totalPacking = ConstantsResources.RANDOM_QUANTITY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                MediaQuery.of(context).size.height * ResponsiveConstants.R_18),
            child: AppBar(
              flexibleSpace: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        ResponsiveConstants.R_03),
                child: Column(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text(
                          StringResources.PACKING_ORDERS_LABEL,
                          style: TextStyle(
                              fontSize: DimensionResources.D_20,
                              color: ColorResources.WHITE_COLOR,
                              fontFamily: ConstantsResources.LIGHT_FAMILY),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: DimensionResources.D_7,
                          right: DimensionResources.D_4,
                          left: DimensionResources.D_4),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                CustomToast().showUnderDevelopmentToast();
                              },
                              icon: SvgPicture.asset(
                                IconResources.GROUP_ICON,
                                colorFilter: const ColorFilter.mode(
                                    ColorResources.WHITE_COLOR,
                                    BlendMode.srcIn),
                              )),
                          Container(
                            color: ColorResources.WHITE_COLOR,
                            width: DimensionResources.D_1,
                            height: DimensionResources.D_17,
                          ),
                          const SizedBox(
                            width: DimensionResources.D_10,
                          ),
                          Expanded(
                            child: Text(
                              "${StringResources.TOTAL_PACKING_LABEL}$totalPacking",
                              style: const TextStyle(
                                  fontSize: DimensionResources.D_16,
                                  fontFamily: ConstantsResources.REGULAR_FAMILY,
                                  color: ColorResources.BLACK_COLOR,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: DimensionResources.D_10),
                            child: Container(
                              width: DimensionResources.D_80,
                              height: DimensionResources.D_40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      DimensionResources.D_5),
                                  color: ColorResources.WHITE_COLOR),
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  CustomDialog().showLicenseDialog(context);
                                },
                                child: const Text(
                                  StringResources.NEXT_CAPITAL_LABEL,
                                  style: TextStyle(
                                      color: ColorResources.PRIMARY_COLOR,
                                      fontFamily:
                                          ConstantsResources.LIGHT_FAMILY,
                                      fontSize: DimensionResources.D_13),
                                ),
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        body: Padding(
          padding: const EdgeInsets.only(
              top: DimensionResources.D_30,
              left: DimensionResources.D_20,
              right: DimensionResources.D_20),
          child: GridView.builder(
            itemCount: ConstantsResources.RANDOM_ITEM_COUNT,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ConstantsResources.GRID_CROSS_AXIS_COUNT,
                crossAxisSpacing: DimensionResources.D_20,
                mainAxisExtent: DimensionResources.D_200,
                mainAxisSpacing: DimensionResources.D_20),
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(DimensionResources.D_12),
                      bottom: Radius.circular(DimensionResources.D_5)),
                  boxShadow: [
                    BoxShadow(
                      color: ColorResources.SHADOW_COLOR,
                      blurRadius: DimensionResources.D_16,
                      blurStyle: BlurStyle.inner,
                      offset: Offset(
                          DimensionResources.D_0, DimensionResources.D_2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(DimensionResources.D_12),
                      bottom: Radius.circular(DimensionResources.D_5)),
                  child: Stack(
                    children: [
                      Container(
                        height: DimensionResources.D_280,
                        width: DimensionResources.D_200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(DimensionResources.D_12),
                              bottom: Radius.circular(DimensionResources.D_5)),
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(DimensionResources.D_10),
                          child: const Image(
                            image: AssetImage(ImageResources.RANDOM_PICTURE),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: DimensionResources.D_0,
                        child: Container(
                          color: ColorResources.WHITE_COLOR,
                          height: DimensionResources.D_50,
                          width: DimensionResources.D_200,
                        ),
                      ),
                      const Positioned(
                        bottom: DimensionResources.D_25,
                        left: DimensionResources.D_8,
                        child: Text(
                          StringResources.RANDOM_NAME,
                          style: TextStyle(fontSize: DimensionResources.D_11),
                        ),
                      ),
                      const Positioned(
                        bottom: DimensionResources.D_10,
                        left: 8,
                        child: Text(
                          StringResources.RANDOM_QUANTITY,
                          style: TextStyle(fontSize: DimensionResources.D_9),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
