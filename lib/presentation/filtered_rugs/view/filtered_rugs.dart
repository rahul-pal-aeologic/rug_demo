import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
import 'package:rug_demo/models/rug/rug_dummy_model.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/widgets/rug_briefview.dart';
import 'package:rug_demo/presentation/dashboard/view/rug_details/view/rug_details.dart';

class FilteredRugs extends StatefulWidget {
  static String routeName = '/filtered_rugs';
  const FilteredRugs({super.key});

  @override
  State<FilteredRugs> createState() => _FilteredRugsState();
}

class _FilteredRugsState extends State<FilteredRugs> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
        showAppbar: true,
        appbarTitle: 'Bedroom Rug',
        actions: [
          Column(
            children: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Clear Filter',
                    style: AppStyles.smallBoldTextWithUnderline(
                        AppColors.primaryColor,
                        size: 18),
                  ),
                ),
              ),
            ],
          )
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _FilterByBox(title: 'Fractal Kusat', moreThan2: true),
                      _FilterByBox(title: 'Floral, City', moreThan2: true),
                      _FilterByBox(title: 'Red, Black', moreThan2: true),
                    ],
                  ),
                ),
                SizedBox(
                  // color: Colors.orange,
                  // height: MediaQuery.of(context).size.height - 80,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: staticRugs.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 459 / 474,
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

class _FilterByBox extends StatelessWidget {
  final String title;
  final bool moreThan2;
  const _FilterByBox({required this.title, required this.moreThan2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: AppColors.textColor3),
      ),
      padding: const EdgeInsets.all(10),
      child: !moreThan2
          ? Text(title)
          : Text.rich(
              TextSpan(
                text: title,
                // style: AppStyles.regularBoldTextWithColor(
                //   Colors.black,
                // ),
                children: <InlineSpan>[
                  TextSpan(
                    text: ' +2',
                    style:
                        AppStyles.mediumTextWithColor(AppColors.primaryColor),
                  ),
                ],
              ),
            ),
    );
  }
}
