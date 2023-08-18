import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rug_demo/global/resource/app_assets.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/presentation/dashboard/cubit/bottom_navbar_cubit.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/homepage.dart';

class DashboardScreen extends StatefulWidget {
  static const String routeName = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (
        context,
        state,
      ) {
        return Scaffold(
            key: scaffoldKey,
            // appBar: _customAppBarWidget(context, scaffoldKey, state),
            // drawer: const SideDrawer(),
            body: IndexedStack(
              index: state,
              children: const [
                Homepage(),
                Homepage(),
                Homepage(),
                Homepage(),
                Homepage()
                // const AssesmentScreen()
              ],
            ),
            bottomNavigationBar: const BottomNavigation());
      },
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(builder: (context, screenIndex) {
      return BottomNavigationBar(
        elevation: 50,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          //home
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined, color: AppColors.blackColor),
            activeIcon: SvgPicture.asset(
              AppAssets.homeNavbar,
              width: AppDimentions.bottomNavbarIconDimension,
              height: AppDimentions.bottomNavbarIconDimension,
            ),
            label: '',
            // label: 'home',
          ),

          //favourites
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.heartNavbar,
              width: AppDimentions.bottomNavbarIconDimension,
              height: AppDimentions.bottomNavbarIconDimension,
            ),
            activeIcon: const Icon(Icons.favorite, color: AppColors.primaryColor),
            label: '',
          ),

          //all apps
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.categoryNavbar,
              width: AppDimentions.bottomNavbarIconDimension,
              height: AppDimentions.bottomNavbarIconDimension,
            ),
            activeIcon:
                const Icon(Icons.browse_gallery, color: AppColors.primaryColor),
            label: '',
          ),
          //notifications
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.notification,
              width: AppDimentions.bottomNavbarIconDimension,
              height: AppDimentions.bottomNavbarIconDimension,
            ),
            activeIcon:
                const Icon(Icons.notifications, color: AppColors.primaryColor),
            label: '',
            // label: 'home',
          ),
          //settings
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.setting,
              width: AppDimentions.bottomNavbarIconDimension,
              height: AppDimentions.bottomNavbarIconDimension,
            ),
            activeIcon: const Icon(Icons.settings, color: AppColors.primaryColor),
            label: '',
          ),
        ],
        currentIndex: screenIndex,
        onTap: (int i) {
          context.read<BottomNavCubit>().selectTab(i);
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.textColor1,
        selectedItemColor: AppColors.primaryColor,
      );
    });
  }
}
