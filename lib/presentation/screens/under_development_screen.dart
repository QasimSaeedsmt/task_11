import 'package:flutter/material.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/sessionManager/auth_service.dart';
import 'package:task_11/utils/custom_toast.dart';

class UnderDevelopmentScreen extends StatelessWidget {
  const UnderDevelopmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: DimensionResources.D_10),
            child: TextButton(
                onPressed: () {
                  AuthService().logout();
                  CustomToast()
                      .showCustomToast(StringResources.LOGOUT_SUCCESSFUL);

                  Navigator.pushReplacementNamed(context, LOGIN_SCREEN_ROUTE);
                },
                child: const Text(
                  StringResources.LOGOUT_LABEL,
                  style: TextStyle(
                      fontSize: DimensionResources.D_18,
                      color: ColorResources.WHITE_COLOR),
                )),
          )
        ],
        title: const Text(StringResources.UNDER_DEVELOPMENT_SCREEN_TITLE),
      ),
      body: const Center(
        child: Text(
          StringResources.UNDER_DEVELOPMENT_SCREEN_LABEL,
          style: TextStyle(fontSize: DimensionResources.D_18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthService().logout();
          CustomToast().showCustomToast(StringResources.LOGOUT_SUCCESSFUL);
          Navigator.pushReplacementNamed(context, LOGIN_SCREEN_ROUTE);
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
