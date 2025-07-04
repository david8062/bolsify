import 'package:bolsify/l10n/generated/app_localizations.dart';
import 'package:bolsify/src/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../shared/widgets/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRect(
                  child: Align(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.7,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 250,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  localizations.appName,
                  style: AppTextStyles.title.copyWith(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60), // Espacio entre logo y switch
          AuthSwitch(onToggle: (isLogin) {}),
        ],
      ),
    );
  }
}
