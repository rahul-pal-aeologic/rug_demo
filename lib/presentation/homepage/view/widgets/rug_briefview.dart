import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';

class RugBriefViewWidget extends StatelessWidget {
  final String name;
  final void Function() onTap;
  final int price;
  final double rating;
  RugBriefViewWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.rating,
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
                          'https://media.istockphoto.com/id/542827628/photo/traditional-carpet-store.webp?s=612x612&w=is&k=20&c=3lk3edH3zbKUv0v2vz9jqjL7qSSviXb5s52ntvu0BfY=',
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
                  child: Row(
                    children: [
                      Text(
                        name,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Rs.',
                            children: <InlineSpan>[
                              TextSpan(
                                text: price.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Text(rating.toString())
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                left: 10,
                top: 10,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                )),
            Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                    maxRadius: 10,
                    backgroundColor: AppColors.blackColor,
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
