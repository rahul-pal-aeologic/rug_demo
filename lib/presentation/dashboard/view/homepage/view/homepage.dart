import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_assets.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
import 'package:rug_demo/models/rug/rug_dummy_model.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/custom_textfield.dart';
import 'package:rug_demo/presentation/common_widgets/custom_textfieldnew.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/widgets/rug_briefview.dart';
import 'package:rug_demo/presentation/dashboard/view/rug_details/view/rug_details.dart';
import 'package:rug_demo/presentation/filter/view/filter_page.dart';

class Homepage extends StatefulWidget {
  static const String routeName = '/homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController searchController = TextEditingController();

  // void initState() {
  //  SystemChannels.textInput.invokeMethod('TextInput.hide');
  //  super.initState();
  //  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
        showAppbar: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const _HeaderRow(),
                minimumSpacer,
                CustomTextFieldNew(
                    height: 70,
                    suffixIcon: InkWell(
                      onTap: () {
                        print("search tapped");
                      },
                      child: SvgPicture.asset(
                        AppAssets.searchbar,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    prefixIcon: InkWell(
                      onTap: () => context.pushNamed(FilterScreen.routeName),
                      child: SvgPicture.asset(
                        AppAssets.filterSvg,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    hintText: 'Search for products...',
                    textFieldController: searchController,
                    valueDidChange: (_) {},
                    onFocusChange: (_) {}),
                // CustomTextField(
                //     height: 66,
                //     suffixIcon: InkWell(
                //       onTap: () {
                //         print("search tapped");
                //       },
                //       child: SvgPicture.asset(
                //         AppAssets.searchbar,
                //         width: 50,
                //         height: 50,
                //       ),
                //     ),
                //     prefixIcon: InkWell(
                //       onTap: () => context.pushNamed(FilterScreen.routeName),
                //       child: SvgPicture.asset(
                //         AppAssets.filterSvg,
                //         width: 20,
                //         height: 20,
                //       ),
                //     ),
                //     hintText: 'Search for products...',
                //     textFieldController: searchController,
                //     valueDidChange: (_) {},
                //     onFocusChange: (_) {}),
                // normalSpacer,

                Padding(
                  padding: const EdgeInsets.only(top: 17, bottom: 2),
                  child: Row(
                    children: [
                      Text(
                        'Trending',
                        style: AppStyles.normalBoldTextWithColor(Colors.black),
                      ),
                    ],
                  ),
                ),
                // minimumSpacer,
                SizedBox(
                  // color: Colors.orange,
                  // height: MediaQuery.of(context).size.height / 1.6,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: staticRugs.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 20,
                              // mainAxisSpacing: 10,
                              childAspectRatio: 450 / 580,
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: RugBriefViewWidget(
                              image: staticRugs[index].image,
                              name: staticRugs[index].name,
                              price: staticRugs[index].price,
                              rating: staticRugs[index].rating,
                              onTap: () {
                                context.pushNamed(RugDetails.routeName,
                                    extra: staticRugs[index]);
                                print("$index is tapped");
                              }),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              print("sidebar pressed");
            },
            child: SvgPicture.asset(
              AppAssets.menu,
              width: 15,
              height: 15,
            )),
        IconButton(
          onPressed: () {
            print("cart pressed");
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
