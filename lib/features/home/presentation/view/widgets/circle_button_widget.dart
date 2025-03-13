import 'package:flutter/material.dart';
import 'package:sepha_app_nti/core/utilities/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({super.key, this.onTap, required this.iconData});
  final  void Function()? onTap;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.cyan,
        child: Icon(iconData,size: 30,color: AppColors.white,)
        ),
      );
  }
}
