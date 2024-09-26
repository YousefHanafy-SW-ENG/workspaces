import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workspace/core/routing/app_routes.dart';
import 'package:workspace/core/routing/routes.dart';
import 'package:workspace/core/theming/app_theme.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
