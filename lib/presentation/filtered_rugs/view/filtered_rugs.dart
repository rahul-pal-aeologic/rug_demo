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
                  child: Text('Clear Filter',
                      style: AppStyles.smallBoldTextWithUnderline(AppColors.primaryColor, size: 20))),

            ],
          )
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _FilterByBox(title: 'Fractal Kusat', moreThan2: true),
                    _FilterByBox(title: 'Floral, City', moreThan2: true),
                    _FilterByBox(title: 'Red, Black', moreThan2: true),
                  ],
                ),
                SizedBox(
                  // color: Colors.orange,
                  // height: MediaQuery.of(context).size.height - 80,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: staticRugs.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 8,
                              childAspectRatio: 1,
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
  const _FilterByBox({super.key, required this.title, required this.moreThan2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: AppColors.textColor2),
      ),
      padding: EdgeInsets.all(10),
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
