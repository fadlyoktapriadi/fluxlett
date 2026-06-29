import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluxlett/core/theme/app_theme.dart';
import 'package:fluxlett/features/analytics/presentation/pages/analytics_page.dart';
import 'package:fluxlett/features/home/presentation/pages/home_page.dart';
import 'package:fluxlett/features/profile/presentation/pages/profile_page.dart';
import 'package:fluxlett/features/transaction/presentation/pages/transaction_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    TransactionPage(),
    Center(child: Text("Add Page")),
    AnalyticsPage(),
    ProfilePage(),
  ];

  /// Tinggi total floating nav bar (termasuk tombol add yang menjulang)
  static const double _navBarHeight = 65;
  static const double _navBottomPadding = 10;
  static const double _fabOverflow = 22;

  @override
  Widget build(BuildContext context) {
    // Total tinggi area navigasi dari bawah layar
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Stack(
        children: [
          // Halaman konten dinamis — isi penuh layar
          Positioned.fill(child: _pages[_selectedIndex]),

          
          // Navigasi interaktif — melayang di atas semuanya
          Positioned(
            left: 20,
            right: 20,
            bottom: _navBottomPadding + bottomInset,
            child: SizedBox(
              height: _navBarHeight + _fabOverflow,
              child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  // Bar latar navigasi
                  Container(
                    height: _navBarHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildNavItem("Home", 0),
                        _buildNavItem("Transaction", 1),
                        const SizedBox(width: 50),
                        _buildNavItem("Analytics", 3),
                        _buildNavItem("Profile", 4),
                      ],
                    ),
                  ),

                  // Tombol Add melayang
                  Positioned(
                    top: 0,
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedIndex = 2),
                      child: Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              AppTheme.appColors.primary,
                              AppTheme.appColors.secondary,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          border: Border.all(color: Colors.white, width: 4),
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.appColors.primary.withValues(
                                alpha: 0.3,
                              ),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 10,
            height: 2,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppTheme.appColors.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          const SizedBox(height: 4),
          SvgPicture.asset(
            'assets/icons/ic_${label.toLowerCase()}.svg',
            width: 22,
            height: 22,
            colorFilter: ColorFilter.mode(
              isSelected ? AppTheme.appColors.primary : Colors.grey[400]!,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: AppTheme.appTypography.medium.copyWith(
              fontSize: 10,
              color: isSelected ? AppTheme.appColors.primary : Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
