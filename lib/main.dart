import 'package:bolsify/src/config/routes.dart';
import 'package:bolsify/src/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:bolsify/src/config/theme/app_theme.dart';
import 'package:bolsify/l10n/generated/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Bolsify',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );

  }
}