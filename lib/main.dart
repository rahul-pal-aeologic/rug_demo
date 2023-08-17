import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rug_demo/config/router/app_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_strings.dart';
import 'package:rug_demo/presentation/dashboard/cubit/bottom_navbar_cubit.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return

        //  MultiRepositoryProvider(
        //   providers: [
        //     // RepositoryProvider(create: ((context) => UserRepository())),
        //   ],
        //   child:

        MultiBlocProvider(
            providers: [
          BlocProvider<BottomNavCubit>(
            create: (_) => BottomNavCubit(),
          ),
        ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              routerConfig: router,
              theme: ThemeData(
                primaryColor: AppColors.primaryColor,
                appBarTheme: const AppBarTheme(
                  backgroundColor: AppColors.whiteColor,
                  iconTheme: IconThemeData(color: Colors.black),
                ),
              ),
            )
            // ),
            );
  }
}
