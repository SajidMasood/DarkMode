import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:switch_light_to_dark/screen/home_page.dart';
import 'package:switch_light_to_dark/services/theme_services.dart';

import 'constants/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ThemeServices _themeServices = Get.put(ThemeServices());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dart Mode',

      // for light
      theme: MyThemes.lightTheme,
      // for dark
      darkTheme: MyThemes.darkTheme,
      // change theme here
      //themeMode: ThemeMode.light,
      themeMode: _themeServices.theme,

      home: MyHomepage(),
    );
  }
}
