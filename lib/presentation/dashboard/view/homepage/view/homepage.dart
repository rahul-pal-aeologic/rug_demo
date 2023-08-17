import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/custom_textfield.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/widgets/rug_briefview.dart';

class Homepage extends StatefulWidget {
  static const String routeName = '/homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
        showAppbar: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              normalSpacer,
              const _HeaderRow(),
              normalSpacer,
              CustomTextField(
                  suffixIcon: const Icon(Icons.search),
                  prefixIcon: const Icon(Icons.filter_6_outlined),
                  hintText: 'Search for products..',
                  textFieldController: searchController,
                  valueDidChange: (_) {},
                  onFocusChange: (_) {}),
              normalSpacer,
              const Text('Trending'),
              minimumSpacer,
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.6,
                child: GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: RugBriefViewWidget(
                              name: 'Iconic Rug',
                              price: 9999,
                              rating: 4.5,
                              onTap: () {
                                print("$index is tapped");
                              }),
                        ),
                      );
                    }),
              )
            ],
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
        IconButton(
          onPressed: () {
            print("sidebar pressed");
          },
          icon: const Icon(Icons.sort),
        ),
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
