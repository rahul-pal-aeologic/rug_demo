import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/common_widgets/custom_textfield.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/login/view/login_page.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _mobCon = TextEditingController();
  final TextEditingController _passCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            "assets/background1.png",
            fit: BoxFit.cover,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 105, bottom: 5),
                  child: Text(
                    "Create New,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const Text(
                  "Sign up to get started!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.greyShade1,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
                ),
                // Container(
                //   height: 80,
                //   width: 500,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.grey.shade500, width: 2),
                //       color: Colors.grey[300],
                //       borderRadius: BorderRadius.circular(20)),
                //   child: const Padding(
                //     padding: EdgeInsets.all(22.0),
                //     child: Text(
                //       "John Stark",
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //           color: AppColors.blackColor,
                //           fontSize: 23,
                //           fontWeight: FontWeight.w700),
                //     ),
                //   ),
                // ),
                CustomTextField(
                  height: 80,
                  hintText: "Name",
                  boxColor: Colors.grey[300],
                  textFieldController: _nameCon,
                  valueDidChange: (_) {},
                  onFocusChange: (_) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  height: 80,
                  hintText: "Email ID",
                  boxColor: Colors.grey[300],
                  textFieldController: _emailCon,
                  valueDidChange: (_) {},
                  onFocusChange: (_) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  height: 80,
                  hintText: "Mobile Number",
                  boxColor: Colors.grey[300],
                  textFieldController: _mobCon,
                  valueDidChange: (_) {},
                  onFocusChange: (_) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  height: 80,
                  hintText: "Password",
                  boxColor: Colors.grey[300],
                  textFieldController: _passCon,
                  valueDidChange: (_) {},
                  onFocusChange: (_) {},
                ),
                // _textField("Email ID"),
                // _textField("Mobile Number"),
                // _textField("Password"),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10),
                  child: PrimaryButton(
                    label: "",
                    label2: "Signup",
                    onPressed: () {},
                    color: AppColors.primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: PrimaryButton(
                    label: "I'm already a member.",
                    textColor1: Colors.grey[400],
                    label2: " Login",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen(),
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

  // Widget _textField(String title) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 15),
  //     child: Container(
  //       height: 80,
  //       width: 500,
  //       decoration: BoxDecoration(
  //           // border: Border.all(color: Colors.grey.shade500, width: 2),
  //           color: Colors.grey[300],
  //           borderRadius: BorderRadius.circular(20)),
  //       child: Padding(
  //         padding: const EdgeInsets.all(28.0),
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               title,
  //               textAlign: TextAlign.center,
  //               style: const TextStyle(
  //                   color: AppColors.greyColor,
  //                   fontSize: 15,
  //                   fontWeight: FontWeight.w500),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
