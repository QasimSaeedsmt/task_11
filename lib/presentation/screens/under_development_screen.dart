import 'package:flutter/material.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';

class UnderDevelopmentScreen extends StatelessWidget {
  const UnderDevelopmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, ROUTE_CUSTOMER_THREE_SCREEN_ROUTE);
            },
            icon: const Icon(Icons.arrow_back)),
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
          Navigator.pushReplacementNamed(
              context, ROUTE_CUSTOMER_THREE_SCREEN_ROUTE);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
