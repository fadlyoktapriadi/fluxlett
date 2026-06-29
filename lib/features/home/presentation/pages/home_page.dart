import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluxlett/core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF3F3F3),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 36.w,
                            height: 36.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning,",
                            style: AppTheme.appTypography.regular.copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Fyyyy",
                            style: AppTheme.appTypography.semiBold.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/ic_notification_empty.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/container_home.png',
                      width: double.infinity,
                      height: 150.h,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 22,
                        vertical: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Balance",
                            style: AppTheme.appTypography.regular.copyWith(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Rp1.123.456",
                            style: AppTheme.appTypography.bold.copyWith(
                              fontSize: 24.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "My Wallet",
                                style: AppTheme.appTypography.regular.copyWith(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              SvgPicture.asset(
                                'assets/icons/ic_arrow_right_rounded_white.svg',
                                width: 32.w,
                                height: 32.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resume Monthly",
                    style: AppTheme.appTypography.semiBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "July 2026",
                    style: AppTheme.appTypography.semiBold.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/container_resume.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/ic_arrow_down_green.svg',
                                      width: 22.w,
                                      height: 22.h,
                                    ),
                                    SizedBox(width: 8.w),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Income",
                                            style: AppTheme.appTypography.regular
                                                .copyWith(
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(height: 2.h),
                                          Text(
                                            "Rp423.456",
                                            style: AppTheme.appTypography.semiBold
                                                .copyWith(
                                                  fontSize: 14.sp,
                                                  color: Colors.white,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Container(
                                  width: 1.w,
                                  height: 35.h,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/ic_arrow_up_red.svg',
                                      width: 22.w,
                                      height: 22.h,
                                    ),
                                    SizedBox(width: 8.w),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Outcome",
                                            style: AppTheme.appTypography.regular
                                                .copyWith(
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(height: 2.h),
                                          Text(
                                            "Rp293.456",
                                            style: AppTheme.appTypography.semiBold
                                                .copyWith(
                                                  fontSize: 14.sp,
                                                  color: Colors.white,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transaction",
                    style: AppTheme.appTypography.semiBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "See All",
                    style: AppTheme.appTypography.semiBold.copyWith(
                      fontSize: 14.sp,
                      color: AppTheme.appColors.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                "Today",
                style: AppTheme.appTypography.semiBold.copyWith(
                  fontSize: 12.sp,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 8.h),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 80.h),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20.r,
                                backgroundColor: const Color.fromARGB(255, 255, 252, 229),
                                child: ClipOval(
                                  child: Icon(Icons.shopping_cart, size: 22.w, color: Colors.yellow[700]),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Transaction ${index + 1}",
                                    style:
                                        AppTheme.appTypography.medium.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    "Category ${index + 1}",
                                    style:
                                        AppTheme.appTypography.regular.copyWith(
                                      fontSize: 12.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            "-Rp123.456",
                            style:
                                AppTheme.appTypography.semiBold.copyWith(
                              fontSize: 14.sp,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
