import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_11/constants/icon_resources.dart';

import '../constants/constants_resources.dart';
import '../constants/dimension_resources.dart';
import '../constants/responsive_constants.dart';

class CustomAppBar {
  PreferredSize buildCustomAppBar(BuildContext context, String title,
      GlobalKey<ScaffoldState> scaffoldKey) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height * ResponsiveConstants.R_08),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(
              top: DimensionResources.D_20, left: DimensionResources.D_20),
          child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: SvgPicture.asset(IconResources.DRAWER_ICON)),
        ),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: DimensionResources.D_24,
                  fontFamily: ConstantsResources.REGULAR_FAMILY),
            ),
            const SizedBox(
              height: DimensionResources.D_13,
            )
          ],
        ),
      ),
    );
  }

// PreferredSize buildLargeCustomAppBar(BuildContext context) {
//   return PreferredSize(
//     preferredSize: Size.fromHeight(
//         MediaQuery.of(context).size.height * ResponsiveConstants.R_20),
//     child: AppBar(
//       elevation: DimensionResources.D_20,
//       flexibleSpace: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(bottom: DimensionResources.D_28),
//             child: SizedBox(
//               width: DimensionResources.D_65,
//               height: DimensionResources.D_65,
//               child: Image.asset(
//                 IconResources.PRIMARY_LOGO,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
}
