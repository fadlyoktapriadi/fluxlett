
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluxlett/core/theme/app_theme.dart';

Widget itemMenuProfile(String iconPath, String title, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        child: Row(
          children: [
            SvgPicture.asset(iconPath, width: 22, height: 22),
            SizedBox(width: 12.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTheme.appTypography.medium.copyWith(fontSize: 14.sp),
                ),
                Text(
                  subtitle,
                  style: AppTheme.appTypography.light.copyWith(
                    fontSize: 12.sp,
                    color: AppTheme.appColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Icon(Icons.arrow_forward_ios, size: 14.0),
    ],
  );
}

