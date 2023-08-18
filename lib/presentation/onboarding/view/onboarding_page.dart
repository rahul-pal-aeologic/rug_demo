import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: Image.asset("assets/carpet.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Personal Rug",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const Text(
                "Get ideas, Offers in",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Your Inbox",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 10),
                child: PrimaryButton(
                  label: "I'm already a member.",
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
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: PrimaryButton(
                  label: "I'm new user.",
                  textColor1: Colors.grey[400],
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
