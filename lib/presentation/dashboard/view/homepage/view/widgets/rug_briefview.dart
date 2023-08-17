import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_styles.dart';

class RugBriefViewWidget extends StatelessWidget {
  final String name;
  final void Function() onTap;
  final double price;
  final double rating;
  final String image;
  const RugBriefViewWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.rating,
  required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.textColor3),
          // color: Colors.red,
          borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                      height: 100,
                      width: 200,
                      imageUrl:
                          image,
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: AppStyles.regularBoldTextWithColor(Colors.black),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Rs. ',style: AppStyles.regularBoldTextWithColor(Colors.black),
                            children: <InlineSpan>[
                              TextSpan(
                                text: price.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: AppColors.primaryColor),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Text(rating.toString(),style: AppStyles.regularBoldTextWithColor(Colors.black),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Positioned(
                left: 10,
                top: 10,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                )),
            const Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                    maxRadius: 10,
                    backgroundColor: AppColors.darkBlueShade,
                    child: Icon(
                      Icons.add,
                      size: 15,
                    )))
          ],
        ),
      ),
    );
  }
}
