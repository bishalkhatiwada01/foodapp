import 'dart:js';

import 'package:flutter/material.dart';
import 'package:foodapp/main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: Home());
      },
    )
  ]);
}
