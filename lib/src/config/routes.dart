import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bolsify/src/features/home/view/home_view.dart';

class AppRoutes {
  static const String home = '/';
}

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
