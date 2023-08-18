import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
import 'package:rug_demo/models/rug/color_model.dart';
import 'package:rug_demo/models/rug/rug_dummy_model.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/dashboard/view/rug_details/view/widgets/color_selector.dart';
import 'package:rug_demo/presentation/design_rug/view/design_rug.dart';

class RugDetails extends StatefulWidget {
  final RugDummyModel rug;
  static const String routeName = '/rug_details';
  const RugDetails({super.key, required this.rug});

  @override
  State<RugDetails> createState() => _RugDetailsState();
}

class _RugDetailsState extends State<RugDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
      showAppbar: false,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 2,
                      imageUrl: widget.rug.image,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    Positioned(
                      bottom: 10,
                      child: PrimaryButton(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 56,
                        label: "",
                        label2: "Design your Own Rug",
                        textColor2: AppColors.primaryColor,
                        onPressed: () {
                          context.pushNamed(DesignRug.routeName);
                        },
                        color: AppColors.whiteColor,
                      ),
                    )
                  ],
                ),
                minimumSpacer,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.rug.name,
                            style: AppStyles.extraLargeBoldTextWithColor(
                                Colors.black),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              Text(
                                widget.rug.rating.toString(),
                                style: AppStyles.firstlargeBoldTextWithColor(
                                    Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                      //--------by
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'by ',
                              style: AppStyles.textFieldHintStyle,
                              children: <InlineSpan>[
                                TextSpan(
                                  text: widget.rug.seller,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      normalSpacer,
                      //--
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Description',
                          style:
                              AppStyles.regularBoldTextWithColor(Colors.black),
                        ),
                      ),
                      minimumSpacer,
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.rug.description,
                            style: AppStyles.regularTextWithColorAnd15Size(
                                AppColors.textColor1)),
                      ),
                      normalSpacer,
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.fitHeight,
                                      imageUrl: widget.rug.image,
                                      height: 70,
                                      width: 70,
                                    )),
                              ),
                            )
                        ],
                      ),
                      normalSpacer,
                      Row(
                        children: [
                          Text(
                            'Color',
                            style: AppStyles.regularBoldTextWithColor(
                                Colors.black),
                          ),
                          ColorSelector(
                              list: colorsForRug, onSelect: (value) {})
                        ],
                      ),
                      normalSpacer,
                    ],
                  ),
                ),
                const DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: double.infinity,
                  lineThickness: 1.5,
                  dashLength: 4.0,
                  dashColor: AppColors.textColor2,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _AddToCartButton(price: widget.rug.price),
                )
              ],
            ),
            const Positioned(
              left: 20,
              top: 20,
              child: _BackButton(),
            ),
            const Positioned(
              right: 20,
              top: 20,
              child: _CartButton(),
            )
          ],
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
    );
  }
}

class _CartButton extends StatelessWidget {
  const _CartButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("CART BUTTON PRESSED"),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        child: const Center(
          child: Icon(
            Icons.shopping_cart,
            color: AppColors.textColor1,
          ),
        ),
      ),
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  final double price;
  const _AddToCartButton({required this.price});

  @override
  Widget build(BuildContext context) {

    final indianRupeesFormat = NumberFormat.currency(
           name: "INR",
           locale: 'en_IN',
           decimalDigits: 0, 
           symbol: '₹ ',
        );
    var formattedPrice = indianRupeesFormat.format(price);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(5),
              shadowColor:
                  const MaterialStatePropertyAll(AppColors.primaryColor),
              backgroundColor:
                  MaterialStateProperty.all(AppColors.primaryColor)),
          onPressed: () {},
          child: SizedBox(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: 30, width: 30,
                    color: AppColors.whiteColor.withAlpha(100),
                    padding: const EdgeInsets.all(4),
                    // child: Text('asdadss'),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Text('Add to cart',
                    style: AppStyles.regularBoldTextWithColor(Colors.white)),
                const SizedBox(),
                Container(
                  width: 0.61,
                  color: Colors.white,
                  height: 30,
                ),
                Text.rich(
                  TextSpan(
                    text: '',
                    style: const TextStyle(color: AppColors.whiteColor),
                    children: <InlineSpan>[
                      TextSpan(
                        text: formattedPrice.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
