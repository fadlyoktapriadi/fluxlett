import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluxlett/core/theme/app_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.15),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        'assets/images/profile_square.png',
                        width: 52.w,
                        height: 52.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fyyyy',
                        style: AppTheme.appTypography.bold.copyWith(
                          fontSize: 16.sp
                        )
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'fff.yy@example.com',
                        style: AppTheme.appTypography.regular.copyWith(
                          fontSize: 12.sp
                        )
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              const Divider(
                color: Color(0xFFD9D9D9),
                thickness: 1,
                height: 24,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 243, 249, 253),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_menu_user.svg',
                            width: 18.w,
                            height: 18.h,
                          ),
                        )
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        'Personal Data',
                        style: AppTheme.appTypography.medium.copyWith(
                          fontSize: 14.sp
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 243, 249, 253),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_menu_settings.svg',
                            width: 18.w,
                            height: 18.h,
                          ),
                        )
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        'Settings',
                        style: AppTheme.appTypography.medium.copyWith(
                          fontSize: 14.sp
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 243, 249, 253),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_menu_report.svg',
                            width: 18.w,
                            height: 18.h,
                          ),
                        )
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        'E-Report',
                        style: AppTheme.appTypography.medium.copyWith(
                          fontSize: 14.sp
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 243, 249, 253),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_menu_database.svg',
                            width: 18.w,
                            height: 18.h,
                          ),
                        )
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        'Backup / Import Data',
                        style: AppTheme.appTypography.medium.copyWith(
                          fontSize: 14.sp
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),
              SizedBox(height: 8.h),
              const Divider(
                color: Color(0xFFD9D9D9),
                thickness: 1,
                height: 24,
              ),
              SizedBox(height: 8.h),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 243, 249, 253),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_menu_logout.svg',
                            width: 18.w,
                            height: 18.h,
                          ),
                        )
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        'Logout',
                        style: AppTheme.appTypography.medium.copyWith(
                          fontSize: 14.sp
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}