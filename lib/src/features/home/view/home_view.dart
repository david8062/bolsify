import 'package:bolsify/l10n/generated/app_localizations.dart';
import 'package:bolsify/src/config/constants.dart';
import 'package:bolsify/src/config/theme/app_colors.dart';
import 'package:bolsify/src/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../shared/widgets/widgets.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localizations.title, // "Bienvenido"
                style: AppTextStyles.title.copyWith(
                  color: AppColors.textThird,
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                label: localizations.changeLanguage,
                onPressed: () {
                },
              ),
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    label: localizations.login,

                    onPressed: () {
                    },
                  ),
                  const SizedBox (width: 80),
                  CustomButton(
                    label: localizations.register,
                    onPressed: () {
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
