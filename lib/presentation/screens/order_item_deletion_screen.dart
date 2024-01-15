import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/quantity_bloc.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/responsive_constants.dart';

import '../../constants/image_resources.dart';
import '../../constants/string_resources.dart';
import '../../utils/custom_dialog.dart';

class OrderItemDeletionScreen extends StatefulWidget {
  const OrderItemDeletionScreen({super.key});

  @override
  State<OrderItemDeletionScreen> createState() =>
      _OrderItemDeletionScreenState();
}

class _OrderItemDeletionScreenState extends State<OrderItemDeletionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height * ResponsiveConstants.R_08),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(
                  top: DimensionResources.D_20, left: DimensionResources.D_20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: ColorResources.WHITE_COLOR,
              ),
            ),
            flexibleSpace: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  StringResources.CUSTOMER_ORDER_LABEL,
                  style: TextStyle(
                      color: ColorResources.WHITE_COLOR,
                      fontSize: DimensionResources.D_20,
                      fontFamily: ConstantsResources.LIGHT_FAMILY),
                ),
                SizedBox(
                  height: DimensionResources.D_13,
                )
              ],
            ),
          ),
        ),
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        body: Padding(
          padding: const EdgeInsets.only(
              top: DimensionResources.D_30,
              left: DimensionResources.D_20,
              right: DimensionResources.D_20),
          child: GridView.builder(
            itemCount: ConstantsResources.GRID_ITEM_COUNT,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ConstantsResources.GRID_CROSS_AXIS_COUNT,
                crossAxisSpacing: DimensionResources.D_17,
                mainAxisExtent: DimensionResources.D_190,
                mainAxisSpacing: DimensionResources.D_20),
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(DimensionResources.D_12),
                      bottom: Radius.circular(DimensionResources.D_8)),
                  boxShadow: [
                    BoxShadow(
                      color: ColorResources.SHADOW_COLOR,
                      blurRadius: DimensionResources.D_16,
                      blurStyle: BlurStyle.outer,
                      offset: Offset(
                          DimensionResources.D_0, DimensionResources.D_2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(DimensionResources.D_12),
                      bottom: Radius.circular(DimensionResources.D_8)),
                  child: Stack(
                    children: [
                      Container(
                        height: DimensionResources.D_280,
                        width: DimensionResources.D_200,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(DimensionResources.D_10),
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
                          height: DimensionResources.D_66,
                          width: DimensionResources.D_200,
                        ),
                      ),
                      const Positioned(
                        bottom: DimensionResources.D_35,
                        left: DimensionResources.D_9,
                        child: Text(
                          StringResources.RANDOM_NAME,
                          style: TextStyle(
                              fontSize: DimensionResources.D_14,
                              fontWeight: FontWeight.w500,
                              fontFamily: ConstantsResources.REGULAR_FAMILY),
                        ),
                      ),
                      const Positioned(
                        bottom: DimensionResources.D_15,
                        left: DimensionResources.D_9,
                        child: Text(
                          StringResources.RANDOM_QUANTITY,
                          style: TextStyle(
                              fontSize: DimensionResources.D_12,
                              fontFamily: ConstantsResources.LIGHT_FAMILY,
                              color: ColorResources.HINT_TEXT_COLOR),
                        ),
                      ),
                      Positioned(
                        bottom: DimensionResources.D_18,
                        left: DimensionResources.D_135,
                        child: IconButton(
                          onPressed: () {
                            BlocProvider(
                              create: (context) => QuantityBloc(),
                              child: CustomDialog().showDeleteDialog(context),
                            );
                          },
                          icon: const Icon(Icons.delete),
                          color: ColorResources.PRIMARY_COLOR,
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
