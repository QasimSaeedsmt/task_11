import 'package:flutter/material.dart';
import 'package:task_11/constants/image_resources.dart';

import '../../constants/color_resources.dart';
import '../../constants/constants_resources.dart';
import '../../constants/dimension_resources.dart';
import '../../constants/responsive_constants.dart';
import '../../constants/string_resources.dart';
import '../router/routes.dart';

class RouteCustomerThreeScreen extends StatefulWidget {
  const RouteCustomerThreeScreen({super.key});

  @override
  State<RouteCustomerThreeScreen> createState() =>
      _RouteCustomerThreeScreenState();
}

class _RouteCustomerThreeScreenState extends State<RouteCustomerThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height * ResponsiveConstants.R_10),
          child: AppBar(
            backgroundColor: ColorResources.PRIMARY_COLOR,
            automaticallyImplyLeading: false,
            iconTheme: const IconThemeData(color: ColorResources.WHITE_COLOR),
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: DimensionResources.D_15),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                        color: ColorResources.WHITE_COLOR,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: DimensionResources.D_20),
                      child: Text(
                        StringResources.CUSTOMERS_LABEL,
                        style: TextStyle(
                            color: ColorResources.WHITE_COLOR,
                            fontFamily: ConstantsResources.LIGHT_FAMILY,
                            fontSize: DimensionResources.D_20),
                      ),
                    ),
                    const SizedBox(
                      width: DimensionResources.D_30,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      ResponsiveConstants.R_01,
                )
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DimensionResources.D_5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: DimensionResources.D_30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: DimensionResources.D_10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringResources.CUSTOMER_LIST_LABEL,
                    style: TextStyle(
                        color: ColorResources.BLACK_COLOR,
                        fontSize: DimensionResources.D_16,
                        fontFamily: ConstantsResources.REGULAR_FAMILY),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, UNDER_DEVELOPMENT_SCREEN_ROUTE);
                      },
                      child: const Text(
                        StringResources.CHANGE_SEQUENCE_LABEL,
                        style: TextStyle(
                            color: ColorResources.PRIMARY_COLOR,
                            fontFamily: ConstantsResources.LIGHT_FAMILY,
                            fontSize: DimensionResources.D_12),
                      ))
                ],
              ),
            ),
            ListView.builder(
              itemCount: ConstantsResources.LISTVIEW_ITEM_COUNT,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Divider(thickness: DimensionResources.D_003),
                    ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageResources.PERSON_IMAGE),
                          radius: DimensionResources.D_25,
                        ),
                        title: const Text(
                          StringResources.RANDOM_PERSON_NAME,
                          style: TextStyle(
                            fontFamily: ConstantsResources.LIGHT_FAMILY,
                            fontSize: DimensionResources.D_14,
                          ),
                        ),
                        subtitle: const Text(
                          StringResources.RANDOM_ADDRESS,
                          style: TextStyle(
                              fontSize: DimensionResources.D_10,
                              color: ColorResources.SUBTITLE_COLOR,
                              fontFamily: ConstantsResources.LIGHT_FAMILY),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ORDER_ITEM_DELETION_SCREEN_ROUTE);
                          },
                          child: const Text(
                            StringResources.VIEW_ORDER_LABEL,
                            style: TextStyle(
                                fontSize: DimensionResources.D_10,
                                color: ColorResources.PRIMARY_COLOR,
                                fontFamily: ConstantsResources.LIGHT_FAMILY),
                          ),
                        )),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
