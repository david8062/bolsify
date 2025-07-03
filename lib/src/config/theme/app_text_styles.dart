import 'package:flutter/material.dart';
import '../constants.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: AppConstants.textTittle,
    fontWeight: FontWeight.w900,
    color: AppColors.textStrong,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: AppConstants.textSubTittle,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: AppColors.textThird,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
}
