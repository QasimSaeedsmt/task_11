import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/responsive_constants.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/utils/custom_app_bar.dart';

import '../../constants/image_resources.dart';
import '../widgets/custom_drawer.dart';

class DriveTourScreen extends StatefulWidget {
  const DriveTourScreen({super.key});

  @override
  State<DriveTourScreen> createState() => _DriveTourScreenState();
}

class _DriveTourScreenState extends State<DriveTourScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar().buildCustomAppBar(
          context, StringResources.TOURS_LABEL, _scaffoldKey),
      drawer: const CustomDrawer(),
      backgroundColor: ColorResources.BACKGROUND_COLOR,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: fullHeight * ResponsiveConstants.R_02,
            horizontal: fullWidth * ResponsiveConstants.R_03),
        child: GridView.builder(
          itemCount: ImageResources.LIST_OF_IMAGES.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: ConstantsResources.TOUR_LIST_MAIN_AXIS_EXTENT,
              crossAxisCount: ConstantsResources.TOUR_SCREEN_CROSS_AXIS_COUNT),
          itemBuilder: (context, index) {
            int tourNo = index + ConstantsResources.INCREMENT;
            return Padding(
              padding: const EdgeInsets.all(DimensionResources.D_8),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: ColorResources.BACKGROUND_COLOR,
                          blurStyle: BlurStyle.solid,
                          offset: Offset(
                              DimensionResources.D_0, DimensionResources.D_4),
                          blurRadius: DimensionResources.D_16)
                    ],
                    color: ColorResources.WHITE_COLOR,
                    borderRadius:
                        BorderRadius.circular(DimensionResources.D_5)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: DimensionResources.D_20,
                          left: DimensionResources.D_20,
                          right: DimensionResources.D_20,
                          bottom: DimensionResources.D_8),
                      child: Image(
                          image:
                              AssetImage(ImageResources.LIST_OF_IMAGES[index])),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: DimensionResources.D_20,
                        ),
                        child: Text(
                          "${StringResources.TOUR_LABEL_WITH_HASH}$tourNo",
                          style: const TextStyle(
                              fontSize: DimensionResources.D_16,
                              fontFamily: ConstantsResources.REGULAR_FAMILY,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
