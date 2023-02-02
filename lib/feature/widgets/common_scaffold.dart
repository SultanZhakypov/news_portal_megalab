import 'package:flutter/material.dart';

import '../../resources/export_resources.dart';
import 'app_drawer.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AppKeys.drawerKey,
      endDrawer: const AppDrawer(),
      backgroundColor: AppColors.colorWhite,
      body: body,
    );
  }
}
