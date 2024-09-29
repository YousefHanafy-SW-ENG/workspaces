import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workspace/core/dependency_injection/setup_locator.dart';
import 'package:workspace/core/routing/app_routes.dart';
import 'package:workspace/my_app.dart';

void main() {
  setupLocator();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(appRouter: AppRouter()), // Wrap your app
    ),
    //MyApp(appRouter: AppRouter()),
  );
}
