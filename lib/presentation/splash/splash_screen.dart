import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/presentation/dashboard/view/dashboard_screen.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/widgets/rug_briefview.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      //   return LandingPage();
      // }));

      // context.goNamed(LandingPage.routeName);
      // dispose();
    });

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: InkWell(
        onTap: () {
          context.pushReplacementNamed(DashboardScreen.routeName);
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimentions.px30,
              horizontal: AppDimentions.px20,
            ),
            child: Center(
                child: RugBriefViewWidget(
                  image: '',
              name: 'name',
              price: 123,
              rating: 4.5,
              onTap: () {
                print("rug briewf view widget presses");
              },
            )
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const SizedBox(),
                //     Column(
                //       children: const [
                //         Text(
                //           AppStrings.appName,
                //           style: AppStyles.headerStyleMonst,
                //         ),
                //       ],
                //     ),
                //     // Image.asset(
                //     //   AppAssets.homeImage,
                //     //   width: AppDimentions.px280,
                //     // ),
                //     const SizedBox(
                //       height: AppDimentions.px50,
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Expanded(
                //             child: SecondaryButton(
                //           label: AppStrings.login,
                //           onPressed: () {
                //             print("login is pressed");
                //           },
                //         )),
                //         const SizedBox(width: AppDimentions.px30),
                //         Expanded(
                //           child: PrimaryButton(
                //             label: AppStrings.signup,
                //             onPressed: () {
                //               print("sign up is pressed");
                //             },
                //           ),

                //           // InkWell(
                //           //   // onTap: () => context.router.push(
                //           //   //   const SignupRoute(),
                //           //   onTap: () {},
                //           //   // ),
                //           //   child: const Center(
                //           //     child: Text(
                //           //       AppStrings.signup,
                //           //       style: AppStyles.buttonStyle,
                //           //     ),
                //           //   ),
                //           // ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),

                ),
          ),
        ),
      ),
    );
  }
}
