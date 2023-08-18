import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';

class FilterScreen extends StatefulWidget {
  static const String routeName = '/filter';
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Filters",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(.5),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "DESIGINERS",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "           3",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.greyShade1.withOpacity(.3)),
                        width: 170,
                        height: 742,
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "CATEGORIES",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Text(
                                  "      4",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    "COLOR",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Text(
                                  "                 2",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _listItem(
                    "assets/greycircle.png",
                    "Allon Gullery",
                  ),
                  _listItem(
                    "assets/greycircle.png",
                    "Ayeno Murayama",
                  ),
                  _listItem(
                    "assets/bluecircle.png",
                    "Fractal Kust",
                  ),
                  _listItem(
                    "assets/bluecircle.png",
                    "Ibrahim Hassam",
                  ),
                  _listItem(
                    "assets/bluecircle.png",
                    "Locand Nagy",
                  ),
                  _listItem(
                    "assets/greycircle.png",
                    "Make Gardon",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _listItem(String asset, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 8, bottom: 10),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Image.asset(
              asset,
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: AppColors.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}