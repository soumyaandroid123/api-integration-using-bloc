import 'dart:io';
import 'package:flutter/material.dart';
import 'package:multiple_user_bloc/core/utils/constants.dart';
import 'buttons/primary_icon_button.dart';

class Commons {
  static AppBar appBar(
    BuildContext context, {
    required String label,
    List<Widget>? actions,
  }) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(UIConstants.baseRadius),
        ),
      ),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: UIConstants.whiteColor,
            ),
      ),
      actions: actions,
    );
  }
}
