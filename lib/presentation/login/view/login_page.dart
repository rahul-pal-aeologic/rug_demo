import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/dashboard/view/dashboard_screen.dart';
import 'package:rug_demo/presentation/signup/view/signup_page.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            "assets/background1.png",
            fit: BoxFit.cover,
            height: 380,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/carpet.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 45, bottom: 30),
                  child: Text(
                    "Sign In to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 80,
                  width: 500,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500, width: 2),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Starkjohn21@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  width: 500,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey.shade500, width: 2),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.hide_image,
                          color: AppColors.greyColor,
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 230, top: 10),
                  child: Text(
                    " Forget Password ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10),
                  child: PrimaryButton(
                    label: "",
                    label2: "Login",
                    onPressed: () {
                      context.goNamed(DashboardScreen.routeName);
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignupScreen(),
                        ),
                      );
                    },
                    color: AppColors.selectedItemColor,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}