import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:switch_light_to_dark/services/theme_services.dart';

class MyHomepage extends StatelessWidget {
  MyHomepage({super.key});

  final _themeServices = Get.find<ThemeServices>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("bodyText2"),
          ],
        ),
      ),
    );
  
    });
    }

  _appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () async {
          _themeServices.switchTheme();
        },
        icon: Icon(Get.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
        color: _themeServices.color,
      ),
      title: const Text("Change Theme Mode"),
      actions: const [
        Icon(
          Icons.add_box_sharp,
          size: 20,
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
