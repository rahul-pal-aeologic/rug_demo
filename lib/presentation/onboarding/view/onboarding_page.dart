import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/common_widgets/secondary_button.dart';
import 'package:rug_demo/presentation/login/view/login_page.dart';
import 'package:rug_demo/presentation/signup/view/signup_page.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
      showAppbar: false,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: Image.asset(
                  "assets/carpet.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Personal Rug",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 26,
                          fontFamily: "Axiforma-ExtraBold",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get ideas, Offers in",
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 32,
                        fontFamily: "Axiforma-Medium",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Your Inbox",
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 32,
                        fontFamily: "Axiforma-Heavy",
                        // fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 7),
                child: PrimaryButton(
                  label: "I'm already a member. ",
                  label2: "Login",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const LoginScreen(),
                    //   ),
                    // );
                    context.goNamed(LoginScreen.routeName);
                  },
                  color: AppColors.primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 12),
                child: PrimaryButton(
                  label: "I'm new user. ",
                  textColor1: Colors.grey[500],
                  label2: "Signup",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const SignupScreen(),
                    //   ),
                    // );

                    context.goNamed(SignupScreen.routeName);
                  },
                  color: AppColors.selectedItemColor,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 5, bottom: 10),
              //   child: PrimaryButton(
              //     label: "",
              //     label2: "Login with Social",
              //     textColor2: Colors.black,
              //     onPressed: () {},
              //     color: AppColors.whiteColor,
              //   ),
              // ),
              SecondaryButton(
                label: "Login with Social",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
