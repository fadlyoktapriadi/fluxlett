import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluxlett/core/theme/app_theme.dart';
import 'package:fluxlett/features/profile/presentation/widgets/item_menu_profile_widget.dart';
import 'package:fluxlett/features/profile/presentation/widgets/menu_divider_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.appColors.surface,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Profile',
                  style: AppTheme.appTypography.semiBold.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Center(
                child: CircleAvatar(
                  radius: 42.r,
                  backgroundColor: AppTheme.appColors.white,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 72.w,
                      height: 72.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    'Fyyy Lett',
                    style: AppTheme.appTypography.semiBold.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(
                    'john.doe@example.com',
                    style: AppTheme.appTypography.regular.copyWith(
                      fontSize: 12.sp,
                      color: AppTheme.appColors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Text(
                'Account Settings',
                style: AppTheme.appTypography.semiBold.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppTheme.appColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    itemMenuProfile(
                      'assets/icons/ic_menu_profile.svg',
                      "Edit Profile",
                      "Change profile information",
                    ),
                    menuDivider(),
                    itemMenuProfile(
                      'assets/icons/ic_notification_empty.svg',
                      "Notifications",
                      "Push Application & Email Alert",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'App Settings',
                style: AppTheme.appTypography.semiBold.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppTheme.appColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    itemMenuProfile(
                      'assets/icons/ic_menu_pallete.svg',
                      "Appearances",
                      "Theme, and other appearance settings",
                    ),
                    menuDivider(),
                    itemMenuProfile(
                      'assets/icons/ic_menu_globe.svg',
                      "Currency & Language",
                      "IDR - English",
                    ),
                    menuDivider(),
                    itemMenuProfile(
                      'assets/icons/ic_menu_database.svg',
                      "Backup & Import Data",
                      "Backup or Import Database",
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 12.h, bottom: 80.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppTheme.appColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_menu_logout.svg',
                      width: 22,
                      height: 22,
                      colorFilter: ColorFilter.mode(
                        AppTheme.appColors.danger,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      "Logout",
                      style: AppTheme.appTypography.medium.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
