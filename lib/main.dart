import 'package:flutter/material.dart';
import 'package:workspace/core/dependency_injection/setup_locator.dart';
import 'package:workspace/core/routing/app_routes.dart';
import 'package:workspace/my_app.dart';

void main() {
  setupLocator();
  runApp(
    MyApp(appRouter: AppRouter()),
  );
}
