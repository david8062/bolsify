import 'package:bolsify/l10n/generated/app_localizations.dart';
import 'package:bolsify/src/config/constants.dart';
import 'package:bolsify/src/config/theme/app_colors.dart';
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
    return Scaffold(
      body: Center(child: Text("Login")),
    );
  }
}

