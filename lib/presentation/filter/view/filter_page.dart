import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/models/rug/filter_model.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/filter/view/widgets/filter_selection.dart';
import 'package:rug_demo/presentation/filtered_rugs/view/filtered_rugs.dart';

class FilterScreen extends StatefulWidget {
  static const String routeName = '/filter';
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
      showAppbar: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
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
              color: Colors.grey.withOpacity(.5),
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
                            "DESIGNERS",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 44,
                          ),
                          Text(
                            "3",
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
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 12, top: 18, bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "CATEGORIES",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: AppColors.greyColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "4",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: AppColors.greyColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 12, top: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "COLOR",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: AppColors.greyColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "2",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: AppColors.greyColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    FilterSelection(
                        list: filterList,
                        onSelect: (value) {
                          print(value?.filterName);
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 390, left: 30),
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: PrimaryButton(
                          label: "",
                          label2: "Apply Filter",
                          onPressed: () {
                            context.pushNamed(FilteredRugs.routeName);
                          },
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),

                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     _listItem(
                //       "assets/greycircle.png",
                //       "Allon Gullery",
                //     ),
                //     _listItem(
                //       "assets/greycircle.png",
                //       "Ayeno Murayama",
                //     ),
                //     _listItem(
                //       "assets/bluecircle.png",
                //       "Fractal Kust",
                //     ),
                //     _listItem(
                //       "assets/bluecircle.png",
                //       "Ibrahim Hassam",
                //     ),
                //     _listItem(
                //       "assets/bluecircle.png",
                //       "Locand Nagy",
                //     ),
                //     _listItem(
                //       "assets/greycircle.png",
                //       "Make Gardon",
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 420, left: 30),
                //       child: SizedBox(
                //         width: 180,
                //         height: 60,
                //         child: PrimaryButton(
                //           label: "",
                //           label2: "Apply Filter",
                //           onPressed: () {
                //             context.pushNamed(FilteredRugs.routeName);
                //           },
                //           color: AppColors.primaryColor,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            )
          ],
        ),
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
