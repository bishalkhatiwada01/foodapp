import 'package:flutter/material.dart';

import 'package:foodapp/ui/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp.router(
        // routeInformationParser: ,
        // routerDelegate: ,
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
      );
    });
  }
}
