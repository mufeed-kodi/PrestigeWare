 import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_colors.dart';

void buildErrorBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primaryColorWithOpacity,
        behavior: SnackBarBehavior.floating,
        content: Text(message),),
    );
  }