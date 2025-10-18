  import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';

AppBar buildAppBar(context, {required String title}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      centerTitle: true,
      title: Text(title, style: AppTextStyles.styleBold19),
    );
  }

