import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/dashboard/cubit/bottom_navbar_cubit.dart';
import 'package:rug_demo/presentation/homepage/view/homepage.dart';

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
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: AppColors.blackColor),
            activeIcon: Icon(Icons.home, color: AppColors.primaryColor),
            label: '',
            // label: 'home',
          ),

          //favourites
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: AppColors.blackColor),
            activeIcon: Icon(Icons.favorite, color: AppColors.primaryColor),
            label: '',
          ),

          //all apps
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery_outlined,
                color: AppColors.blackColor),
            activeIcon: Icon(Icons.browse_gallery, color: AppColors.primaryColor),
            label: '',
          ), 
          //notifications
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined, color: AppColors.blackColor),
            activeIcon: Icon(Icons.notifications, color: AppColors.primaryColor),
            label: '',
            // label: 'home',
          ), 
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined, color: AppColors.blackColor),
            activeIcon: Icon(Icons.settings, color: AppColors.primaryColor),
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
