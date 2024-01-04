import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/utils/custom_app_bar.dart';

class DriveTourScreen extends StatefulWidget {
  const DriveTourScreen({super.key});

  @override
  State<DriveTourScreen> createState() => _DriveTourScreenState();
}

class _DriveTourScreenState extends State<DriveTourScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar().buildCustomAppBar(
          context, StringResources.TOURS_LABEL, _scaffoldKey),
      drawer: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {},
        child: Drawer(
          child: Container(
            color: ColorResources.PRIMARY_COLOR,
            child: Stack(
              children: [
                Positioned(
                    right: DimensionResources.D_10,
                    top: DimensionResources.D_10,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: DimensionResources.D_30,
                          weight: DimensionResources.D_10,
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
